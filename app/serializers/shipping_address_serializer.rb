class ShippingAddressSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :first_name, :last_name, :address, :address2, :city, :postal_code, :country, :region, :order_id
end
