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
#  balancing                :string
#  forwardfold              :string
#  legstrengthening         :string
#  legstretching            :string
#  corestrengthening        :string
#  hipstrengthening         :string
#  hipopening               :string
#  armshoulderstrengthening :string
#  armshoulderstretching    :string
#  backstrengthening        :string
#  backstretching           :string
#  backbending              :string
#  twisting                 :string
#  sidebending              :string
#

class Pose < ApplicationRecord
    belongs_to :yogaflow, :required => false
    has_many :yogaflows, :dependent => :nullify
    has_many :usersequences, :class_name => "Sequence", :dependent => :destroy
    has_many :usercreatedflows, :through => :usersequences, :source => :yogaflow



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
