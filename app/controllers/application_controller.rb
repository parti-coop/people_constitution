class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #bugfix redactor2-rails
  def redactor_current_user
    redactor2_current_user
  end
end
