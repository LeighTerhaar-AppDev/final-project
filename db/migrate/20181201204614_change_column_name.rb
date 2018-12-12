class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :poses, :backstrengethening, :backstrengthening
  end
end
