# == Schema Information
#
# Table name: balances
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Balance < ApplicationRecord
    belongs_to :area
    belongs_to :pose
    
    validates :area_id, presence: true
    validates :pose_id, presence: true
end
