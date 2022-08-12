class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :likes

  def self.find_most_recent_post(user_id)
    Post.where(author_id: user_id).last(3)
  end
end
