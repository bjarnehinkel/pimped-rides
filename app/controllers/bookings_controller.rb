class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def new
    @booking = Booking.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @listing = Listing.find(params[:listing_id])
    @booking.listing = @listing
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:days)
  end

end
