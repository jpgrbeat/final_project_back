class FriendSerializer < ActiveModel::Serializer
  attributes :id,:invitor_id, :invitee_id
end
