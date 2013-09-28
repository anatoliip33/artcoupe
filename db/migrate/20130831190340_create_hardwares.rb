class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|

      t.timestamps
    end
  end
end
