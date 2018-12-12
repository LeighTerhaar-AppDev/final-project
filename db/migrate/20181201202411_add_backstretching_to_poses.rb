class AddBackstretchingToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :backstretching, :boolean
  end
end
