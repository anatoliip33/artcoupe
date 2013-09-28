class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
			t.string :title
      t.text :description
      t.string :image_url
      
      t.timestamps
    end
  end
end
