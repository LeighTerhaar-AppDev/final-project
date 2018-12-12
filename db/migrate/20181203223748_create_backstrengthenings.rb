class CreateBackstrengthenings < ActiveRecord::Migration[5.1]
  def change
    create_table :backstrengthenings do |t|
      t.integer :pose_id

      t.timestamps
    end
  end
end
