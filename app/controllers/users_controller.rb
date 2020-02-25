class UsersController < ApplicationController
  def show
    @user = current_user
    @listing = @user.listing
  end
end
