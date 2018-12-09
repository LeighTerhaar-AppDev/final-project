# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  yogaflow_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :yogaflow

    validates :yogaflow_id, presence: true
    validates :user_id, presence: true, uniqueness: {
    scope: :yogaflow_id}
end
