class CategoryProductSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :category_id, :product_id
end
