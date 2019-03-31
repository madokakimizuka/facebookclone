class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :user_logged_in?
  def user_logged_in?
    if logged_in?
    else
      flash[:referer] = 'ログインしてください'
      redirect_to new_session_path
    end
  end
end
