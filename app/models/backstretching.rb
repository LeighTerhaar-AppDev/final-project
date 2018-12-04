# == Schema Information
#
# Table name: backstretchings
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  area       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Backstretching < ApplicationRecord
    has_many :poses    
    validates :pose_id, presence: true
end
