# == Schema Information
#
# Table name: poses
#
#  id                       :integer          not null, primary key
#  yogaflow_id              :integer
#  name                     :string
#  sanskrit                 :string
#  picture                  :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  position                 :string
#  balancing                :boolean
#  forwardfold              :boolean
#  legstrengthening         :boolean
#  legstretching            :boolean
#  corestrengthening        :boolean
#  hipstrengthening         :boolean
#  hipopening               :boolean
#  armshoulderstrengthening :boolean
#  armshoulderstretching    :boolean
#  backstrengthening        :boolean
#  backstretching           :boolean
#  backbending              :boolean
#  twisting                 :boolean
#  sidebending              :boolean
#

class Pose < ApplicationRecord
    belongs_to :yogaflow, :required => false

    validates :name, presence: true
    validates :sanskrit, presence: true
    validates :position, presence: true
    validates :balancing, presence: true
    validates :forwardfold, presence: true
    validates :legstrengthening, presence: true
    validates :legstretching, presence: true
    validates :corestrengthening, presence: true
    validates :hipstrengthening, presence: true
    validates :hipopening, presence: true
    validates :armshoulderstrengthening, presence: true
    validates :armshoulderstretching, presence: true
    validates :backstrengthening, presence: true
    validates :backstretching, presence: true
    validates :backbending, presence: true
    validates :twisting, presence: true
    validates :sidebending, presence: true

end
