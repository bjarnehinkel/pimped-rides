  class ListingsController < ApplicationController
  before_action :search, only: :index
  skip_before_action :authenticate_user!, only: [:index, :search, :show]

  def index
  end

  def search
    query_name = 'name ILIKE ?'
    query_brand = 'brand ILIKE ?'
    query_both = 'brand ILIKE ? AND name ILIKE ?'
    unless params[:search].nil?
      name = params[:search][:name]
      brand = params[:search][:brand]

      if (params[:search][:brand] == "" && name == "")
        @listings = Listing.all
      elsif params[:search][:brand] == "" && name != ""
        @listings = Listing.where(query_name, "%#{name}%")
      elsif params[:search][:brand] != "" && name == ""
        @listings = Listing.where(query_brand, "%#{brand}%")
      else
        @listings = Listing.where(query_both, "%#{brand}%", "%#{name}%")
      end
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @saved_listing = SavedListing.new
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

  def save
    current_user.saved_listings << @Listing.find(params[:id])
  end

private

  def params_listing
    params.require(:listing).permit(:name, :brand, :price, :production_year, :engine, :horsepower, :description, photos: [])
  end
end
