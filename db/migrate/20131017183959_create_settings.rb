class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
    	t.string :hashed_password
    	t.string :feedback_email

      t.timestamps
    end
  end
end
