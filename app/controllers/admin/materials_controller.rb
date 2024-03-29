class Admin::MaterialsController < ApplicationController
   layout 'admin'

  before_filter :check_auth

  def index
    @materials = Material.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materials }
    end
  end

  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material }
    end
  end

  def new
    @material = Material.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material }
    end
  end

  def edit
    @material = Material.find(params[:id])
  end

  def create
     @material = Material.new(params[:material])

    respond_to do |format|
      if @material.save
        format.html { redirect_to [:admin, @material], notice: 'Material created' }
        format.json { render json: @material, status: :created, location: @material }
      else
        format.html { render action: "new" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      @material = Material.find(params[:id])

    respond_to do |format|
      if @material.update_attributes(params[:material])
        format.html { redirect_to [:admin, @material], notice: 'Material updated' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @material = Material.find(params[:id])
    @material.destroy

    respond_to do |format|
      format.html { redirect_to admin_materials_url, notice: 'Material destroyed' }
      format.json { head :no_content }
    end
   end 
end
