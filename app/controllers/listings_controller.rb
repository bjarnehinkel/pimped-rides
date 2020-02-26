class ListingsController < ApplicationController
  before_action :search, only: :index
  skip_before_action :authenticate_user!, only: [:index, :search, :show]

  def index
  end

  def search
    unless params[:search].nil?
      if (params[:search][:brand] == "" && params[:search][:production_year] == "")
        @listings = Listing.all
      elsif params[:search][:brand] == "" && params[:search][:production_year] != ""
        @listings = Listing.where(production_year: params[:search][:production_year])
      elsif params[:search][:brand] != "" && params[:search][:production_year] == ""
        @listings = Listing.where(brand: params[:search][:brand])
      elsif condition

      else
        @listings = Listing.where(brand: params[:search][:brand], production_year: params[:search][:production_year])
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
    params.require(:listing).permit(:name,:brand,:production_year)
  end
end
