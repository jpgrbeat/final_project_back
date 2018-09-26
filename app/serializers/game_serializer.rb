class GameSerializer < ActiveModel::Serializer
  attributes :id, :name,:description,:img,:category,:mechanic,:publisher,:playing_time,:min_players,:max_players
end
