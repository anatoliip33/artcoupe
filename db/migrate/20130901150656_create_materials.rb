class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
    	t.string :title
      t.attachment :image
      t.string :category

    	t.timestamps
    end
  end
end
