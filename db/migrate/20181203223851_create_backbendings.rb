class CreateBackbendings < ActiveRecord::Migration[5.1]
  def change
    create_table :backbendings do |t|
      t.integer :pose_id
      t.text :area

      t.timestamps
    end
  end
end
