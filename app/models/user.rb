# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  profile                :text
#  profilepic             :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :yogaflows, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :friendrequests, :class_name => "Friend", :foreign_key => "leader_id", :dependent => :destroy
  has_many :requestedfriends, :class_name => "Friend", :foreign_key => "follower_id", :dependent => :destroy
  
  has_many :leaders, :through => :requestedfriends, :source => :follower
  has_many :followers, :through => :friendrequests, :source => :leader
 
  has_many :favoriteyogaflows, :through => :favorites, :source => :yogaflow
  

  validates  :username, presence: true, uniqueness: true
end
