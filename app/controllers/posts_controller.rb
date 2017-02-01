class PostsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @locations = @user.locations
  end

  def show
    @post = Post.find_by_id(params[:id])
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

  private
  def user_params
    params.require(:post).permit(:title, :content)
  end

end
