class ApplicationsController < ApplicationController
  before_action :find_company

  def index
    @applications = Application.where(user: current_user)
  end

  def new
    @application = Application.new
    @stars = company_stars(@company)
  end

  def create
    @application = Application.new(application_params)
    @application.user = current_user
    @application.company = @company
    if @application.save
      redirect_to company_applications_path(@company.id)
    else
      render :new
    end
  end
  
  private

  def company_stars(company)
    reviews = company.reviews.size
    sum = 0
    company.reviews.each do |review|
      sum += review.stars
    end
    return reviews > 0 ? sum.fdiv(reviews).floor : 0
  end

  private

  def find_company
    @company = Company.find(params[:company_id])
  end

  def application_params
    params.require(:application).permit(:first_name, :last_name, :role, :letter, :cv)
  end
end
