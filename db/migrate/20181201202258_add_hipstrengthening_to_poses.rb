class AddHipstrengtheningToPoses < ActiveRecord::Migration[5.1]
  def change
      add_column :poses, :hipstrengthening, :boolean
  end
end
