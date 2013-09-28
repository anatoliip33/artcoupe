class CreateFillings < ActiveRecord::Migration
  def change
    create_table :fillings do |t|
    	t.string :image_url

      t.timestamps
    end
  end
end
