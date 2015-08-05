class EventSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :starts_at, :ends_at
end
