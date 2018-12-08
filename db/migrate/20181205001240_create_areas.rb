class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.text :areaname

      t.timestamps
    end
  end
end
