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
    
    has_many :armshoulderstrengthenings, :dependent => :destroy
    has_many :armshoulderstretchings, :dependent => :destroy
    has_many :backbendings, :dependent => :destroy
    has_many :backstrengthenings, :dependent => :destroy
    has_many :backstretchings, :dependent => :destroy
    has_many :balances, :dependent => :destroy
    has_many :corestrengthenings, :dependent => :destroy
    has_many :forwardfolds, :dependent => :destroy
    has_many :hipopenings, :dependent => :destroy
    has_many :hipstrengthenings, :dependent => :destroy
    has_many :legstrengthenings, :dependent => :destroy
    has_many :legstretchings, :dependent => :destroy
    has_many :sidebendings, :dependent => :destroy
    has_many :twistings, :dependent => :destroy

    
    has_many :armshoulderstrengtheningareas, :through => :armshoulderstrengthenings, :source => :area
    has_many :armshoulderstretchingareas, :through => :armshoulderstretchings, :source => :area
    has_many :backbendingareas, :through => :backbendings, :source => :area
    has_many :backstrengtheningareas, :through => :backstrengthenings, :source => :area
    has_many :backstretchingareas, :through => :backstretchings, :source => :area
    has_many :balanceareas, :through => :balances, :source => :area
    has_many :corestrengtheningareas, :through => :corestrengthenings, :source => :area
    has_many :forwardfoldareas, :through => :forwardfolds, :source => :area
    has_many :hipopeningareas, :through => :hipopenings, :source => :area
    has_many :hipstrengtheningareas, :through => :hipstrengthenings, :source => :area
    has_many :legstrengtheningareas, :through => :legstrengthenings, :source => :area
    has_many :legstretchingareas, :through => :legstretchings, :source => :area
    has_many :sidebendingareas, :through => :sidebendings, :source => :area
    has_many :twistingareas, :through => :twistings, :source => :area



    validates :name, presence: true
    validates :sanskrit, presence: true
    validates :position, presence: true
   

end
