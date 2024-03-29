class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :token
      t.belongs_to :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
