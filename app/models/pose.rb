# == Schema Information
#
# Table name: poses
#
#  id          :integer          not null, primary key
#  yogaflow_id :integer
#  name        :string
#  sanskrit    :string
#  picture     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  position    :string
#

class Pose < ApplicationRecord
    belongs_to :yogaflow, :required => false

    has_many :yogaflows, :dependent => :nullify
    has_many :usersequences, :class_name => "Sequence", :dependent => :destroy
    has_many :usercreatedflows, :through => :usersequences, :source => :yogaflow

    belongs_to :armshoulderstrengthening, :required => false
    belongs_to :armshoulderstretching, :required => false
    belongs_to :backbending, :required => false
    belongs_to :backstrengthening, :required => false
    belongs_to :backstretching, :required => false
    belongs_to :balance, :required => false
    belongs_to :corestrengthening, :required => false
    belongs_to :forwardfold, :required => false
    belongs_to :hipopening, :required => false
    belongs_to :hipstrengthening, :required => false
    belongs_to :legstrengthening, :required => false
    belongs_to :legstretching, :required => false
    belongs_to :sidebending, :required => false
    belongs_to :twisting, :required => false

    validates :name, presence: true
    validates :sanskrit, presence: true
    validates :position, presence: true
   

end
