class GameSerializer < ActiveModel::Serializer
  attributes :id, :name,:description,:img,:category,:mechanic,:publisher,:playing_time,:min_players,:max_players
  has_many :user_games
  has_many :users, through: :user_games
end
