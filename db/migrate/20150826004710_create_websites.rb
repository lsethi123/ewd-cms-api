class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.string :address
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
