class AddColumnPayetdoBits < ActiveRecord::Migration
  def change
    add_column :bits, :payed, :boolean, dafault: false
  end
end
