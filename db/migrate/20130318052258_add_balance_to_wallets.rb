class AddBalanceToWallets < ActiveRecord::Migration
  def change
    add_column :wallets, :balance, :decimal , precision: 8, scale: 2, default: 10000 
  end
end
