  class ListingsController < ApplicationController
  before_action :search, only: :index
  skip_before_action :authenticate_user!, only: [:index, :search, :show]

  def index
  end

  def search
    query_production_year = 'production_year ILIKE ?'
    query_brand = 'brand ILIKE ?'
    query_both = 'brand ILIKE ? AND production_year ILIKE ?'
    year = params[:search][:production_year]
    brand = params[:search][:brand]
    unless params[:search].nil?
      if (params[:search][:brand] == "" && year == "")
        @listings = Listing.all
      elsif params[:search][:brand] == "" && year != ""
        @listings = Listing.where(query_production_year, "%#{year}%")
      elsif params[:search][:brand] != "" && year == ""
        @listings = Listing.where(query_brand, "%#{brand}%")
      else
        @listings = Listing.where(query_both, "%#{brand}%", "%#{year}%")
      end
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(params_listing)
    @listing.user = current_user
    if @listing.save
      redirect_to listings_path
    else
      render :new
    end
  end

private

  def params_listing
    params.require(:listing).permit(:name,:brand,:production_year, photos: [])
  end
end
