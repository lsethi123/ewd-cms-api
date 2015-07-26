class Post < ActiveRecord::Base
  has_many :tag_posts
  has_many :tags, :through => :tag_posts
end
