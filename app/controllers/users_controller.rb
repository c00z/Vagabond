class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])

    @hash = Gmaps4rails.build_markers(@user.posts) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude
      marker.infowindow "<h6>#{post.title}</h6><p>#{post.content}</p>"
    end
  end

  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
    if @user.save
      login(@user)
     redirect_to @user # <-- go to show
   else
     flash[:notice] = "Please enter username & email"
     redirect_to new_user_path
    end
 end

  before_action :require_login, only: [:edit]

 def edit
  user_id = params[:id]
  @user = User.find_by_id(user_id)
  render :edit
end

def update
  user_id = params[:id]
  @user = User.find(user_id)
  if @user.update_attributes(user_params)
    flash[:notice] = "Updated successfully."
    redirect_to @user
  else
    flash[:error] = @user.errors.full_messages.join(", ")
    redirect_to edit_user_path(@user)
  end
end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :current_city, :avatar)
  end

end
