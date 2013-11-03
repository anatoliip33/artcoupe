class ErrorController < ApplicationController
layout "error"

  def error404
    render 'error404', :status => 404
  end

  def error500
    render 'error500', :status => 500
  end

end
