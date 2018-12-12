class AddSidebendingToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :sidebending, :boolean
  end
end
