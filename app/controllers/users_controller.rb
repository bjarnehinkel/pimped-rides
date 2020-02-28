class UsersController < ApplicationController
  def show
    @user = current_user
    @listings = @user.listings
    @bookings = @user.bookings
    @saved_listings = @user.saved_listings
  end
end
