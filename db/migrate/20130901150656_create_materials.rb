class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
    	t.string :title
      t.string :image_url

    	t.timestamps
    end
  end
end
