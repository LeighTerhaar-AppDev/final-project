class AddBackbendingToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :backbending, :boolean
  end
end
