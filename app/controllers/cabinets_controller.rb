class CabinetsController < ApplicationController
 
   def index
    @cabinets = Cabinet.where(:category => params[:category]).paginate(:page => params[:page], :per_page => 6)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cabinets }
    end
  end

end