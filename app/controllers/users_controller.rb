class UsersController < ApplicationController

  def show
    @user = current.user
    @listing = @user.listing
  end

end
