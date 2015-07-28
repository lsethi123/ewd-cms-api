class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.boolean :in_stock

      t.timestamps null: false
    end
  end
end
