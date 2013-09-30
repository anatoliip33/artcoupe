class CreateFillings < ActiveRecord::Migration
  def change
    create_table :fillings do |t|
    	t.attachment :image
    	t.string :name

      t.timestamps
    end
  end
end
