class Room < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :messages, dependent: :destroy

  after_create_commit { broadcast_append_to "rooms" }
end
