class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|
    	t.string :image_url
    	
      t.timestamps
    end
  end
end
