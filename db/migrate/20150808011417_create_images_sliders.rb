class CreateImagesSliders < ActiveRecord::Migration
  def change
    create_table :images_sliders do |t|
      t.belongs_to :image, index: true, foreign_key: true
      t.belongs_to :slider, index: true, foreign_key: true
    end
  end
end
