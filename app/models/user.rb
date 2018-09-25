class User < ApplicationRecord
  has_secure_password
  has_many :user_events
  has_many :events, through: :user_events
  has_many :invitors, class_name: "Friend", foreign_key: :invitor_id
  has_many :invitees, class_name: "Friend", foreign_key: :invitee_id

  has_many :invitors, through: :friends
  has_many :invitees, through: :friends
end
