class CreateBalances < ActiveRecord::Migration[5.1]
  def change
    create_table :balances do |t|
      t.integer :pose_id
      t.string :area

      t.timestamps
    end
  end
end
