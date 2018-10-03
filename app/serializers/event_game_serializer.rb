class EventGameSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :event_id, :game_votes
  belongs_to :game
  belongs_to :event
end
