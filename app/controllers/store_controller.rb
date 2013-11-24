class StoreController < ApplicationController

  def index
    @cabinets = Cabinet.where(:category => params[:category] || '2dors').limit(3)
    @materials = Material.where(:category => params[:category] || 'other').limit(6)
    @faq = Faq.order('created_at ASC').last
    @faq_number = Faq.count
  end

end
