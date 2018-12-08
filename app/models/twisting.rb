# == Schema Information
#
# Table name: twistings
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Twisting < ApplicationRecord
    belongs_to :pose 
    belongs_to :area
    
    validates :area_id, presence: true
    validates :pose_id, presence: true
end
