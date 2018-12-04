class CreateBackstretchings < ActiveRecord::Migration[5.1]
  def change
    create_table :backstretchings do |t|
      t.integer :pose_id
      t.text :area

      t.timestamps
    end
  end
end
