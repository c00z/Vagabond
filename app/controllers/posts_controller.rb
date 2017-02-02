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
    @location = Location.find_by_id(params[:id])
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
    params.require(:post).permit(:title, :content)
  end

end
