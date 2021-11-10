class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image_url
  belongs_to :user
  belongs_to :post
end
