class User < ActiveRecord::Base
  has_many :posts, foreign_key: :author_id
  has_many :categories, through: :posts, source: :category
end
