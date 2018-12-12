class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :poses, :balancing, :string
    change_column :poses, :forwardfold, :string
    change_column :poses, :legstrengthening, :string
    change_column :poses, :legstretching, :string
    change_column :poses, :corestrengthening, :string
    change_column :poses, :hipstrengthening, :string
    change_column :poses, :hipopening, :string
    change_column :poses, :armshoulderstrengthening, :string
    change_column :poses, :armshoulderstretching, :string
    change_column :poses, :backstrengthening, :string
    change_column :poses, :backstretching, :string
    change_column :poses, :backbending, :string
    change_column :poses, :twisting, :string
    change_column :poses, :sidebending, :string
  end
end
