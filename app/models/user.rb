class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  # validations for name and post_counter

  validates :name, presence: true
  validates :post_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Method that returns the 3 most recent posts for a given user.

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
