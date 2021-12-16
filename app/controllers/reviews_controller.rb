class ReviewsController < ApplicationController
  before_action :find_company, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.company = @company
    @review.user = current_user
    if @review.save
      redirect_to company_path(@company.id) 
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to company_path(@review.company)
    end
  end

  private

  def find_company
    @company = Company.find(params[:company_id])
  end

  def review_params
    params.require(:review).permit(:topic, :comment)
  end
end