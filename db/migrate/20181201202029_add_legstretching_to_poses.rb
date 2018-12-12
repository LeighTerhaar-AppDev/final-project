class AddLegstretchingToPoses < ActiveRecord::Migration[5.1]
  def change
  add_column :poses, :legstretching, :boolean
  end
end
