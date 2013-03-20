class DropTableLineItems < ActiveRecord::Migration
  def up
    drop_table :line_items
  end

  def down
    create_table :line_items
  end
end
