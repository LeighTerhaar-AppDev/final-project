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
#  pose_id     :integer
#

class Yogaflow < ApplicationRecord
    belongs_to :user

    has_many :poses, :dependent => :nullify
    has_many :favorites, :dependent => :destroy
    has_many :users, :through => :favorites, :source => :user
    has_many :usersequences, :class_name => "Sequence", :dependent => :destroy
    has_many :ownposes, :through => :usersequences, :source => :pose

    validates  :user_id, presence: true
    validates :title, presence: true
    validates :description, presence: true
    validates :intention, presence: true
    validates :yogatype, presence: true
end
