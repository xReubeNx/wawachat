class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password

  has_many :messages
end
