class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :post_boards
  has_many :boards, through: :post_boards
end
