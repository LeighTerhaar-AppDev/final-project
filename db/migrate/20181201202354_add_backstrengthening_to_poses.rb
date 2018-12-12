class AddBackstrengtheningToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :backstrengethening, :boolean

  end
end
