class CreateImagesPages < ActiveRecord::Migration
  def change
    create_table :images_pages do |t|
      t.belongs_to :image, index: true, foreign_key: true
      t.belongs_to :page, index: true, foreign_key: true
    end
  end
end
