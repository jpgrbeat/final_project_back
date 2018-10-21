class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id,:content, :name
  belongs_to :user
  belongs_to :event
end
