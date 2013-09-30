class Cabinet < ActiveRecord::Base
  attr_accessible :image, :name
  has_attached_file :image
end
