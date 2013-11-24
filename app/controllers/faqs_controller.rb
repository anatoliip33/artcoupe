class FaqsController < ApplicationController

  def index
    @limit = 10
    if params[:number]
      page = (params[:number].to_i / @limit.to_f).ceil
      redirect_to faq_path(:page => page, :anchor => params[:number])
      return
    end
    @page = params[:page].to_i == 0 ? 1 : params[:page].to_i
    @offset = (@page - 1) * @limit
    @faqs = Faq.order('created_at ASC').limit(@limit).offset(@offset).all

    @pages = (Faq.count / @limit.to_f).ceil
  end

end