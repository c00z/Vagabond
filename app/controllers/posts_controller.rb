class PostsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @locations = @user.locations
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def address hsh
    hsh['addr']
  end

  def create
    address post_params
    new_post = Post.new(post_params)
    binding.pry
    @location = Location.find_by_id(params[:id])
    new_post.user = current_user
    new_post.location = @location
    @post = new_post.save
    if @post
      redirect_to @location
    else
      flash[:notice] = "Title must be between 1 and 200 characters"
       redirect_to new_post_path
     end

    # binding.pry
    # new_post.location = Location.find_by_id(params[:id])
  end

  def new
    @post = Post.new
    @location = Location.find_by_id(params[:id])
  end

  before_action :require_login, only: [:edit, :update, :destroy]

  def edit
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
    render :edit
  end

  def update
    post_id = params[:id]
    @post = Post.find(post_id)

    if @post.update_attributes(post_params)
      flash[:notice] = "Updated successfully."
      redirect_to current_user
    else
      flash[:error] = user.errors.full_messages.join(", ")
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    post_id = params[:id]
    @post = Post.find(post_id)
    @post.destroy
    redirect_to current_user
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :addr, activity_ids:[])
  end

end
