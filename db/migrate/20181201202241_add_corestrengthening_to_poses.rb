class AddCorestrengtheningToPoses < ActiveRecord::Migration[5.1]
  def change
      add_column :poses, :corestrengthening, :boolean
  end
end
