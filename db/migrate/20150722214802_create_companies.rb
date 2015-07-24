class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :email
      t.belongs_to :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
