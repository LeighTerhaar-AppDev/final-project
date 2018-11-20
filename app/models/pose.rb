# == Schema Information
#
# Table name: poses
#
#  id          :integer          not null, primary key
#  yogaflow_id :integer
#  name        :string
#  sanskrit    :string
#  picture     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Pose < ApplicationRecord
    belongs_to :yogaflow, :required => false

    validates :name, presence: true
    validates :sanskrit, presence: true
end
