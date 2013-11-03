require 'bcrypt'

class Admin::SettingsController < ApplicationController
  layout "admin"

  before_filter :check_auth

  def index
    @settings = Settings.instance
  end

  def save
    @settings = Settings.instance

    # Fix Rails dont understand indexes in posted arrays.
    params[:settings] = params[:settings].collect do |key, value|
      value
    end

    respond_to do |format|
      if @settings.update_attributes(params[:settings])
        format.html {
          redirect_to url_for(:action => :index), notice: 'Settings updated'
        }
      else
        format.html { render :action => :index }
      end
    end
  end

end
