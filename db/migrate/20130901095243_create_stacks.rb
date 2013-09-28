class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
    	t.attachment :image
    	t.string :name
    	
      t.timestamps
    end
  end
end
