class PostSerializer < ActiveModel::Serializer
  attributes :id, :blurb, :blog, :image_url, :video_url, :user_id

  belongs_to :user
  has_many :comments
end
