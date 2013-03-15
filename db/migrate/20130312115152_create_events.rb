class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.decimal :minbits, precision: 8, scale: 2 
      t.string :status, default: "suspense"
      t.timestamps
    end
  end
end
