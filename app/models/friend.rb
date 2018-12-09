# == Schema Information
#
# Table name: friends
#
#  id          :integer          not null, primary key
#  follower_id :integer
#  leader_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Friend < ApplicationRecord
belongs_to :follower, :class_name => "User", :foreign_key => "follower_id"

belongs_to :leader, :class_name => "User", :foreign_key => "leader_id"

validates :follower, :presence => true, :uniqueness => { :scope => :leader }
validates :leader, :presence => true
end
