class ListingsController < ApplicationController
  before_action :search, only: :index

  def index
  end


  def search
    @listings = Listing.where(brand:params["search"]["brand"], production_year:params["search"]["production_year"])
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
    params.require(:listing).permit(:name,:brand,:production_year)
  end

end
