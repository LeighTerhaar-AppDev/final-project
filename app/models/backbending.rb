# == Schema Information
#
# Table name: backbendings
#
#  id         :integer          not null, primary key
#  pose_id    :integer
#  area       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Backbending < ApplicationRecord
    has_many :poses    
    validates :pose_id, presence: true

end
