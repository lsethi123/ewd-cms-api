class ConversationSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :sender_id, :recipient_id
  has_many :messages
end
