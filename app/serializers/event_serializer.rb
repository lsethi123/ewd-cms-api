class EventSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :date, :starts_at, :ends_at, :user_id
end
