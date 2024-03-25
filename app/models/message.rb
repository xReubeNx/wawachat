class Message < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  belongs_to :room, dependent: :destroy

  scope :in_room, -> (id) { where(room_id: id) }

  after_create_commit { broadcast_append_to "messages" }
end
