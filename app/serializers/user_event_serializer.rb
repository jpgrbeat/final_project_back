class UserEventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id
   belongs_to :users
   belongs_to :events
end
