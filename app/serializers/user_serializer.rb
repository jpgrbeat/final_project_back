class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password_digest, :description,:img
  has_many :user_events
  has_many :events, through: :user_events
  has_many :invitee_friends, through: :friends
  has_many :invitor_friends, through: :friends
  has_many :user_games
  has_many :games, through: :user_games
end
