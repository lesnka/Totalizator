class CreateBits < ActiveRecord::Migration
  def change
    create_table :bits do |t|
      t.integer :event_id
      t.integer :user_id
      t.decimal :sum, precision: 8, scale: 2
      t.timestamps
    end
  end
end