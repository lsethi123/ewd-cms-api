class CreateImageProducts < ActiveRecord::Migration
  def change
    create_table :image_products do |t|
      t.belongs_to :image, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
