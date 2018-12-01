class AddTwistingToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :twisting, :boolean
  end
end
