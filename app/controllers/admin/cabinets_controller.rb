class Admin::CabinetsController < ApplicationController
  layout 'admin'

  before_filter :check_auth

  def index
    @cabinets = Cabinet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cabinets }
    end
  end

  def show
    @cabinet = Cabinet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cabinet }
    end
  end

  def new
    @cabinet = Cabinet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cabinet }
    end
  end

  def edit
    @cabinet = Cabinet.find(params[:id])
  end

  def create
     @cabinet = Cabinet.new(params[:cabinet])

    respond_to do |format|
      if @cabinet.save
        format.html { redirect_to admin_cabinets_path, notice: 'admin.cabinets.cabinet_created' }
        format.json { render json: @cabinet, status: :created, location: @cabinet }
      else
        format.html { render action: "new" }
        format.json { render json: @cabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      @cabinet = Cabinet.find(params[:id])

    respond_to do |format|
      if @cabinet.update_attributes(params[:cabinet])
        format.html { redirect_to [:admin, @cabinet], notice: 'admin.cabinets.cabinet_updated' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cabinet.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @cabinet = Cabinet.find(params[:id])
    @cabinet.destroy

    respond_to do |format|
      format.html { redirect_to admin_cabinets_url, notice: 'admin.cabinets.cabinet_destroyed' }
      format.json { head :no_content }
    end
  end
end
