class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.boolean :accessibility
      t.boolean :adaptive_height
      t.boolean :autoplay
      t.integer :autoplay_speed
      t.boolean :arrows
      t.string :as_nav_for
      t.string :append_arrows
      t.string :prev_arrow
      t.string :next_arrow
      t.boolean :center_mode
      t.string :center_padding
      t.string :css_ease
      t.boolean :dots
      t.boolean :draggable
      t.boolean :fade
      t.boolean :focus_on_select
      t.string :easing
      t.integer :edge_friction
      t.boolean :infinite
      t.integer :initial_slide
      t.string :lazy_load
      t.boolean :mobile_first
      t.boolean :pause_on_hover
      t.boolean :pause_on_dots_hover
      t.integer :rows
      t.string :slide
      t.integer :slides_per_row
      t.integer :slides_to_show
      t.integer :slides_to_scroll
      t.integer :speed
      t.boolean :swipe
      t.boolean :swipe_to_slide
      t.boolean :touch_move
      t.integer :touch_threshold
      t.boolean :use_css
      t.boolean :variable_width
      t.boolean :vertical
      t.boolean :vertical_swiping
      t.boolean :rtl
      t.belongs_to :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
