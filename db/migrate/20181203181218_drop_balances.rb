class DropBalances < ActiveRecord::Migration[5.1]
  def change
    drop_table :balances
  end
end
