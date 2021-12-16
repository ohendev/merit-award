class ReviewsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @review = Review.new
  end

  def create
  end
  
end
