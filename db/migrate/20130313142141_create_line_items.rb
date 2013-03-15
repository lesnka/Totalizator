class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :event_id
      t.integer :bit_id
      t.decimal :price, precision: 8, scale: 2 default: 100 
      t.timestamps
    end
  end
end
