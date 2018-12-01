class AddLegstrengtheningToPoses < ActiveRecord::Migration[5.1]
  def change
    add_column :poses, :legstrengthening, :boolean
  end
end
