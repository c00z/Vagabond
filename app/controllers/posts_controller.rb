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
    @location = Location.find_by_id(params[:id])
    new_post.user = current_user
    new_post.location = @location
    @post = new_post.save
    if @post
      redirect_to @location
    else
      new_post.errors.full_messages.each do |message|
        flash[:error] = message
      end
       redirect_to new_post_path
     end

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
      @location = Post.find_by_id(params[:id]).location
      redirect_to location_path(@location)
    else
      @post.errors.full_messages.each do |message|
        flash[:error] = message
      end
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    post_id = params[:id]
    @post = Post.find(post_id)
    @location = Post.find_by_id(params[:id]).location
    @post.destroy
    redirect_to location_path(@location)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :addr, activity_ids:[])
  end

end
