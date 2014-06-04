class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
    	t.string :hashed_password
    	t.string :feedback_email
    	t.string :cabinet_attrs
    	t.string :filling_attrs
    	t.string :material_attrs

      t.timestamps
    end
  end
end
