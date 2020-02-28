class UsersController < ApplicationController
  def show
    @user = current_user
    @listings = @user.listings
    @bookings = @user.bookings
  end
end
