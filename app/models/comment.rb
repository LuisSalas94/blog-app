class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  validates :text, presence :true
  
  #Update comments counter 
  after_create do
    self.update_comment_counter
  end


  def self.update_comment_counter
    if post.comments_counter.nil?
      post.update(comments_counter: 1)
    else 
      post.increment!(:comments_counter)
    end
  end
end
