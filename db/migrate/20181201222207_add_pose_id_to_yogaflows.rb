class AddPoseIdToYogaflows < ActiveRecord::Migration[5.1]
  def change
    add_column :yogaflows, :pose_id, :integer
  end
end
