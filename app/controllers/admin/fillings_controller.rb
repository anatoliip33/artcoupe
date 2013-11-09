class Admin::FillingsController < ApplicationController
  layout 'admin'

  before_filter :check_auth

  def index
    @fillings = Filling.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fillings }
    end
  end

  def show
    @filling = Filling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filling }
    end
  end

  def new
    @filling = Filling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filling }
    end
  end

  def edit
    @filling = Filling.find(params[:id])
  end

  def create
     @filling = Filling.new(params[:filling])

    respond_to do |format|
      if @filling.save
        format.html { redirect_to admin_fillings_path, notice: 'Filling created' }
        format.json { render json: @filling, status: :created, location: @filling }
      else
        format.html { render action: "new" }
        format.json { render json: @filling.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      @filling = Filling.find(params[:id])

    respond_to do |format|
      if @filling.update_attributes(params[:filling])
        format.html { redirect_to [:admin, @filling], notice: 'Filling updated' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filling.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @filling = Filling.find(params[:id])
    @filling.destroy

    respond_to do |format|
      format.html { redirect_to admin_fillings_url, notice: 'Filling destroyed' }
      format.json { head :no_content }
    end
   end 
end
