class SavedListingsController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id])
    @saved_listing = SavedListing.new
    @saved_listing.listing = @listing
    @saved_listing.user = current_user
    @saved_listing.save
  end
end


