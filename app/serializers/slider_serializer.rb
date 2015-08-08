class SliderSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :page_id, :accessibility, :adaptive_height, :autoplay, :autoplay_speed, :arrows, :as_nav_for, :append_arrows, :prev_arrow, :next_arrow, :center_mode, :center_padding, :css_ease, :dots, :draggable, :focus_on_select, :easing, :edge_friction, :infinite, :initial_slide, :lazyLoad, :mobile_first, :pause_on_hover, :pause_on_dots_hover,
  :rows, :slide, :slides_per_row, :slides_to_show, :slides_to_scroll, :speed, :swipe, :swipe_to_slide, :touch_move, :touch_threshold, :use_css, :variable_width, :vertical, :vertical_swiping, :rtl
  has_many :images
end
