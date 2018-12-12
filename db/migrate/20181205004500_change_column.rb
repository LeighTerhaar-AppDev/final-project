class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :balances, :area, :area_id
    rename_column :forwardfolds, :area, :area_id
    rename_column :legstrengthenings, :area, :area_id
    rename_column :legstretchings, :area, :area_id
    rename_column :corestrengthenings, :area, :area_id
    rename_column :hipstrengthenings, :area, :area_id
    rename_column :hipopenings, :area, :area_id
    rename_column :armshoulderstrengthenings, :area, :area_id
    rename_column :armshoulderstretchings, :area, :area_id
    rename_column :backstrengthenings, :area, :area_id
    rename_column :backstretchings, :area, :area_id
    rename_column :backbendings, :area, :area_id
    rename_column :twistings, :area, :area_id
    rename_column :sidebendings, :area, :area_id
    
    change_column :balances, :area_id, :integer
    change_column :forwardfolds, :area_id, :integer
    change_column :legstrengthenings, :area_id, :integer
    change_column :legstretchings, :area_id, :integer
    change_column :corestrengthenings, :area_id, :integer
    change_column :hipstrengthenings, :area_id, :integer
    change_column :hipopenings, :area_id, :integer
    change_column :armshoulderstrengthenings, :area_id, :integer
    change_column :armshoulderstretchings, :area_id, :integer
    change_column :backstrengthenings, :area_id, :integer
    change_column :backstretchings, :area_id, :integer
    change_column :backbendings, :area_id, :integer
    change_column :twistings, :area_id, :integer
    change_column :sidebendings, :area_id, :integer
  end
end
