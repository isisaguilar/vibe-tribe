class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :updated_at
  belongs_to :user
end
