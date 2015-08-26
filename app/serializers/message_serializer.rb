class MessageSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :message, :user_id, :conversation_id
end
