# == Schema Information
#
# Table name: yogaflows
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string
#  intention   :string
#  description :string
#  yogatype    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Yogaflow < ApplicationRecord
    belongs_to :user
    has_many :poses, :dependent => :nullify
    has_many :favorites, :dependent => :destroy
    has_many :users, :through => :favorites, :source => :user

    validates  :user_id, presence: true
    validates :title, presence: true
end
