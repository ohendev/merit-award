class CompaniesController < ApplicationController
  def index
    @companies = Company.all.sort { |a,b| company_stars(b) <=> company_stars(a) }
  end

  def show
    @company = Company.find(params[:id])
    @stars = company_stars(@company)
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
end
