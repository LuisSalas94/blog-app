class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :author, class_name: 'User'

  def self.update_post(user)
    user.increment!(:posts_counter)
  end

  def self.find_most_recent_comments(post_id)
    Comment.where(post_id: post_id).last(5)
  end
end
