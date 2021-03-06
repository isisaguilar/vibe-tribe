class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :posts
  has_many :boards, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true

end
