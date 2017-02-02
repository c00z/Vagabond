class PostsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @locations = @user.locations
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def create
    new_post = Post.new(post_params)
    @location = Location.find_by_id(params[:location_id])
    new_post.user = current_user
    new_post.location = @location
    # binding.pry
    # new_post.location = Location.find_by_id(params[:id])
    @post = new_post.save
    redirect_to @location
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
