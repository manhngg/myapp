class Admin::UsersController < ApplicationController
  def index
    @users = User.order(:id).page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = 'Please check your email to activate your account!'
      redirect_to(root_url)

    else
      render 'new'
    end
  end

  def edit
    @user = User.find( params[:id] )
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params) # returns true only on succesful update!
      # Handle a successful update.
      flash[:success] = "Profile has been successfully updated!"
      redirect_to (admin_users_url)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find( params[:id] ).destroy

    respond_to do |format|
      format.html {
        flash[:success] = 'User successfully deleted!'
        redirect_to (admin_users_url)
      }
      format.js
    end
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :role,
                                 :password_confirmation)
  end

  # Before filters

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user.admin?
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
