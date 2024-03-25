class UsersController < ApplicationController
  def create
    @user = User.new(permitted_params)
    if @user.save!
      session[:user_id] = @user.id
      redirect_to "/"
    else
      # Proper error handling
      # flash[:error] = "Passwords must match / other error"
    end
  end

  private

  def permitted_params
    params.permit(:username, :display_name, :password, :password_confirmation)
  end
end
