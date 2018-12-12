class CreateHipopenings < ActiveRecord::Migration[5.1]
  def change
    create_table :hipopenings do |t|
      t.integer :pose_id
      t.text :area

      t.timestamps
    end
  end
end
