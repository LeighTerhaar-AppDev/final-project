# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  areaname   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ApplicationRecord
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

    has_many :armshoulderstrengtheningposes, :through => :armshoulderstrengthenings, :source => :pose
    has_many :armshoulderstretchingposes, :through => :armshoulderstretchings, :source => :pose
    has_many :backbendingposes, :through => :backbendings, :source => :pose
    has_many :backstrengtheningposes, :through => :backstrengthenings, :source => :pose
    has_many :backstretchingposes, :through => :backstretchings, :source => :pose
    has_many :balanceposes, :through => :balances, :source => :pose
    has_many :corestrengtheningposes, :through => :corestrengthenings, :source => :pose
    has_many :forwardfoldposes, :through => :forwardfolds, :source => :pose
    has_many :hipopeningposes, :through => :hipopenings, :source => :pose
    has_many :hipstrengtheningposes, :through => :hipstrengthenings, :source => :pose
    has_many :legstrengtheningposes, :through => :legstrengthenings, :source => :pose
    has_many :legstretchingposes, :through => :legstretchings, :source => :pose
    has_many :sidebendingposes, :through => :sidebendings, :source => :pose
    has_many :twistingposes, :through => :twistings, :source => :pose

end
