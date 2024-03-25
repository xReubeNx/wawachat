require "test_helper"

class MessageTest < ActiveSupport::TestCase
  test "A message must contain text" do
    msg = Message.new(text: nil)
    assert_not msg.save
  end
end
