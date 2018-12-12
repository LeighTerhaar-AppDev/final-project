class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :poses, :balancing
    remove_column :poses, :forwardfold
    remove_column :poses, :legstrengthening
    remove_column :poses, :legstretching
    remove_column :poses, :corestrengthening
    remove_column :poses, :hipstrengthening
    remove_column :poses, :hipopening
    remove_column :poses, :armshoulderstrengthening
    remove_column :poses, :armshoulderstretching
    remove_column :poses, :backstrengthening
    remove_column :poses, :backstretching
    remove_column :poses, :backbending
    remove_column :poses, :twisting
    remove_column :poses, :sidebending
  end
end
