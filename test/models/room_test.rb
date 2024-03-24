require "test_helper"

class RoomTest < ActiveSupport::TestCase
  test "Room without a name is invalid" do
    assert_not Room.create(name: nil).valid?
  end
end
