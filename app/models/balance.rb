# == Schema Information
#
# Table name: balances
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  area       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Balance < ApplicationRecord
    has_many :poses

    validates :pose_id, presence: true
    validates :area, presence: true
end
