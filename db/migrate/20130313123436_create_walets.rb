class CreateWalets < ActiveRecord::Migration
  def change
    create_table :walets do |t|

      t.timestamps
    end
  end
end
