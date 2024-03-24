class Message < ApplicationRecord
  validates :message, presence: true

  belongs_to :user_id
  belongs_to :room_id
end
