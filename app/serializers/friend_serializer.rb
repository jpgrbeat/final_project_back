class FriendSerializer < ActiveModel::Serializer
  attributes :id,:invitor_id, :invitee_id
  belongs_to :invitor, class_name: 'User'
  belongs_to :invitee, class_name: 'User'

end
