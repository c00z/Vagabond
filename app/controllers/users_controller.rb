class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
   @user = User.create(user_params)
   login(@user) # <-- log the user in
   redirect_to @user # <-- go to show
 end

 def edit
  user_id = params[:id]
  @user   = User.find_by_id(user_id)
end

def update
  user_id = params[:user_id]
  user = User.find_by_id(user_id)

  if User.update(user_params)
    flash[:notice] = "Updated successfully."
    redirect_to @user
  else
    flash[:error] = user.errors.full_messages.join(", ")
    redirect_to edit_user_path
  end
end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :current_city)
  end

end
