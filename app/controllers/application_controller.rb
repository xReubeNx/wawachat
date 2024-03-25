class ApplicationController < ActionController::Base
  before_action :user_from_session

  def user_from_session
    return unless session[:user_id].present?

    @user ||= User.find(session[:user_id])
  end
end
