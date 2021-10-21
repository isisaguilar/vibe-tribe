class Board < ApplicationRecord
  belongs_to :user
  has_many :post_boards
  has_many :posts, through: :post_boards
end
