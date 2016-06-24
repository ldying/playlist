class UsersController < ApplicationController
  def main
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/main", notice: "User successfully created"

    else 
      # @user
      flash[:errors] = @user.errors.full_messages
      redirect_to "/main"
    # render "index"
    end
  end

  def show
  	@user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
