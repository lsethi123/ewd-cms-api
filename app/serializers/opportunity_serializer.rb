class OpportunitySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :stage, :estimated_close, :estimated_amount, :company_id
end
