class AddPositionToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :position, :string
  end
end
