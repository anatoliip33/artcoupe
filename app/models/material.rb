class Material < ActiveRecord::Base
  attr_accessible :image, :title, :category

  has_attached_file :image
end
