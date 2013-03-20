class AddColumnRoleTo < ActiveRecord::Migration
  def change
       add_column  :users, :role, :string, default: "user"
  end
end
