class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :updated_at
  has_many :post_boards
end
