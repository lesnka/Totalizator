class CreateMice < ActiveRecord::Migration
  def change
    create_table :mice do |t|

      t.timestamps
    end
  end
end
