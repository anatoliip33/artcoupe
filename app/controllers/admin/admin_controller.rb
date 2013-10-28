class Admin::AdminController < ApplicationController
layout 'admin'

  before_filter :check_auth, :only => [:logout]

  def login
    render 'login', :layout => nil
  end

  def logout
    session[:logged_in] = false
    redirect_to "/"
  end

  def login_attempt
    if Settings.instance.password_is_valid?(params[:password])
      session[:logged_in] = true
      redirect_to params[:return_to]
    else
      redirect_to url_for(:action => "login"),
                  notice: 'admin.login.invalid_password',
                  :flash => { :return_to => params[:return_to] }
    end
  end

end
