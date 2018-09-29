class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id
  belongs_to :user
  belongs_to :game
end
