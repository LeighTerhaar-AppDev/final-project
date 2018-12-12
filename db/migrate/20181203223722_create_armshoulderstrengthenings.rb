class CreateArmshoulderstrengthenings < ActiveRecord::Migration[5.1]
  def change
    create_table :armshoulderstrengthenings do |t|
      t.integer :pose_id
      t.text :area

      t.timestamps
    end
  end
end
