class CompaniesController < ApplicationController

  def index
    @companies = Company.all.sort { |a, b| company_stars(b) <=> company_stars(a) }

    @companies = policy_scope(Company).order(created_at: :desc)

    @markers = Company.geocoded.map do |company|
      {
        lat: company.latitude,
        lng: company.longitude,
        info_window: render_to_string(partial: "info_window", locals: { company: company }),
        image_url: helpers.asset_url('logo.png')
      }

    end
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
