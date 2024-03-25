class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      @user = user
      session[:user_id] = @user.id
      redirect_to "/"
    else
      # wrong username or password
    end
  end

  def destroy
    reset_session
    @user = nil

    redirect_to "/login"
  end

  private

  def permitted_params
    params.permit(:username, :password)
  end
end
