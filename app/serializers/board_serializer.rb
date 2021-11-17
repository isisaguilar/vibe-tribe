class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :updated_at, :posts
  has_many :post_boards
end
