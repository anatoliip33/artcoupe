class Cabinet < ActiveRecord::Base
  attr_accessible :image, :name, :category
  has_attached_file :image
end
