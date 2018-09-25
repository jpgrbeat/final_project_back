class EventSerializer < ActiveModel::Serializer
  attributes :id, :title,:description,:address,:date, :player_count,:time_start,:time_end
  has_many :user_events
  has_many :users, through: :user_events
end