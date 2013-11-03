class Admin::StacksController < ApplicationController
layout 'admin'

  before_filter :check_auth

  def index
    @stacks = Stack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stacks }
    end
  end

  def show
    @stack = Stack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stack }
    end
  end

  def new
    @stack = Stack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stack }
    end
  end

  def edit
    @stack = Stack.find(params[:id])
  end

  def create
     @stack = Stack.new(params[:stack])

    respond_to do |format|
      if @stack.save
        format.html { redirect_to admin_stacks_path, notice: 'Stack created' }
        format.json { render json: @stack, status: :created, location: @stack }
      else
        format.html { render action: "new" }
        format.json { render json: @stack.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      @stack = Stack.find(params[:id])

    respond_to do |format|
      if @stack.update_attributes(params[:stack])
        format.html { redirect_to [:admin, @stack], notice: 'Stack updated' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stack.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @stack = Stack.find(params[:id])
    @stack.destroy

    respond_to do |format|
      format.html { redirect_to admin_stacks_url, notice: 'Stack destroyed' }
      format.json { head :no_content }
    end
   end 
end
