class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role
      t.string :title
      t.string :phone
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
