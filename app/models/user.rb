class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :password, presence: true, confirmation: true

  has_many :messages, dependent: :destroy
end
