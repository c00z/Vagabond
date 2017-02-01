class PostsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @locations = @user.locations
  end

  def create
    @location = Location.find(params[:location_id])
    @location.users.push(current_user)
  end

  def show
  end

  def new
  end

  def edit
  end

  def new
  end

  def destroy
  end



end
