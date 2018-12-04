class AddAreaToBackstrengthening < ActiveRecord::Migration[5.1]
  def change
    add_column :backstrengthenings, :area, :text
  end
end
