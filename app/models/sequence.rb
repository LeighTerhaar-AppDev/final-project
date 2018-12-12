# == Schema Information
#
# Table name: sequences
#
#  id          :integer          not null, primary key
#  yogaflow_id :integer
#  pose_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sequence < ApplicationRecord
    
    belongs_to :yogaflow
    belongs_to :pose

end
