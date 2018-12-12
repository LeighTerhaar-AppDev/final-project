class AddArmshoulderstretchingToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :armshoulderstretching, :boolean
  end
end
