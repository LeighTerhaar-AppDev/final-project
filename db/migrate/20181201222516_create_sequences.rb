class CreateSequences < ActiveRecord::Migration[5.1]
  def change
    create_table :sequences do |t|
      t.integer :yogaflow_id
      t.integer :pose_id

      t.timestamps
    end
  end
end
