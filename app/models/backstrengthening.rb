# == Schema Information
#
# Table name: backstrengthenings
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area       :text
#

class Backstrengthening < ApplicationRecord
    has_many :poses    
    validates :pose_id, presence: true
end
