class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  # validations for title, comments_counter and likes_counter

  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Method that updates the posts counter for a user.

  def update_posts_counter
    author.update(post_counter: author.posts.count)
  end

  # Method which returns the 5 most recent comments for a given post.

  def recent_comments
    comments.last(5)
  end
end
