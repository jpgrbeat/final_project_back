class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :event_games
  has_many :games, through: :event_games
end
