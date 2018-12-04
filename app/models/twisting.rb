# == Schema Information
#
# Table name: twistings
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  area       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Twisting < ApplicationRecord
    has_many :poses    
    validates :pose_id, presence: true
end
