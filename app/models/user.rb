class User < ApplicationRecord
  has_secure_password
  has_many :user_events
  has_many :events, through: :user_events
  has_many :invitor_friends, class_name: "Friend", foreign_key: :invitor_id
  has_many :invitee_friends, class_name: "Friend", foreign_key: :invitee_id

  has_many :invitors, through: :invitor_friends
  has_many :invitees, through: :invitee_friends
end
