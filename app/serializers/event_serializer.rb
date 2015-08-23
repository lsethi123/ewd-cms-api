class EventSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :date, :start, :end
end
