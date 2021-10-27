class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :email

  has_many :posts
end
