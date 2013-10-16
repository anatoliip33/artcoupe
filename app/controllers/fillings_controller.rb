class FillingsController < ApplicationController
  # GET /fillings
  # GET /fillings.json
  def index
    @fillings = Filling.where(:category => params[:category]).paginate(:page => params[:page], :per_page => 6)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fillings }
    end
  end

  # GET /fillings/1
  # GET /fillings/1.json
  def show
    @filling = Filling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filling }
    end
  end

  # GET /fillings/new
  # GET /fillings/new.json
  def new
    @filling = Filling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filling }
    end
  end

  # GET /fillings/1/edit
  def edit
    @filling = Filling.find(params[:id])
  end

  # POST /fillings
  # POST /fillings.json
  def create
    @filling = Filling.new(params[:filling])

    respond_to do |format|
      if @filling.save
        format.html { redirect_to @filling, notice: 'Filling was successfully created.' }
        format.json { render json: @filling, status: :created, location: @filling }
      else
        format.html { render action: "new" }
        format.json { render json: @filling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fillings/1
  # PUT /fillings/1.json
  def update
    @filling = Filling.find(params[:id])

    respond_to do |format|
      if @filling.update_attributes(params[:filling])
        format.html { redirect_to @filling, notice: 'Filling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fillings/1
  # DELETE /fillings/1.json
  def destroy
    @filling = Filling.find(params[:id])
    @filling.destroy

    respond_to do |format|
      format.html { redirect_to fillings_url }
      format.json { head :no_content }
    end
  end
end
