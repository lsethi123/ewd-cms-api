class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :message
  has_one :sender
  has_one :recipient
end
