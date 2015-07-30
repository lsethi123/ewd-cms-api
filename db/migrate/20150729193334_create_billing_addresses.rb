class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :address2
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :region
      t.belongs_to :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
