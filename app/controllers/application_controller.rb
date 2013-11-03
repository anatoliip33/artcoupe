class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def check_auth
    if not session[:logged_in]
      redirect_to "/admin/login", :flash => { :return_to => request.path }
    end
  end

end
