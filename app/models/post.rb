class Post < ApplicationRecord
  belongs_to :user, optional: true
  #optional true..works but returns null for user info
  has_many :comments
  has_many :post_boards
  has_many :boards, through: :post_boards

  # validates :blurb, length: { maximum: 140 }
  # validates :blog, length: { minimum: 140 }
end
