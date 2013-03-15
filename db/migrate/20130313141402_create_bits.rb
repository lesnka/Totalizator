class CreateBits < ActiveRecord::Migration
  def change
    create_table :bits do |t|
      :event_id
      t.timestamps
    end
  end
end
