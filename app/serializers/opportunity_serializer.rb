class OpportunitySerializer < ActiveModel::Serializer
  attributes :id, :title, :stage, :estimated_close, :estimated_amount, :company_id
end
