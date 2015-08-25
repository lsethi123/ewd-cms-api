class CreateImagePosts < ActiveRecord::Migration
  def change
    create_table :image_posts do |t|
      t.belongs_to :image, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
