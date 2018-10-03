class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password_digest, :description,:img
  has_many :user_events
  has_many :events, through: :user_events



  has_many :invitees, through: :invitor_friends
  has_many :invitors, through: :invitee_friends
  has_many :user_games
  has_many :games, through: :user_games
end
