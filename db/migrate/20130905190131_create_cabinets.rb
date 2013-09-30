class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
			t.attachment :image
    	t.string :name
      
      t.timestamps
    end
  end
end
