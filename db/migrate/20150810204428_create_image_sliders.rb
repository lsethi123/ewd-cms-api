class CreateImageSliders < ActiveRecord::Migration
  def change
    create_table :image_sliders do |t|
      t.belongs_to :image, index: true, foreign_key: true
      t.belongs_to :slider, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
