class CreateTagPosts < ActiveRecord::Migration
  def change
    create_table :tag_posts do |t|
      t.belongs_to :tag, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
