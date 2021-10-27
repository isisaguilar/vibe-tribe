class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :blurb, :blog, :image_url, :video_url

  belongs_to :user
  has_many :comments
end
