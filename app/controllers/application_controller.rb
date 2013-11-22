class ApplicationController < ActionController::Base
  protect_from_forgery

  if Rails.env != 'development'
  	rescue_from ActiveRecord::RecordNotFound, :with => :not_found
  	rescue_from Exception, :with => :not_found
  end

  protected

  def check_auth
    if not session[:logged_in]
      redirect_to "/admin/login", :flash => { :return_to => request.path }
    end
  end

end
