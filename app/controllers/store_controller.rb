class StoreController < ApplicationController

  def index
    @cabinets = Cabinet.limit(3).all
    @materials = Material.offset(15).all
  end

end
