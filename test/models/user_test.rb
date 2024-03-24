require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "User without a name is invalid" do
    assert_not User.create(name: nil, password: "123", display_name: "S").valid?
  end

  test "User without a password is invalid" do
    assert_not User.create(name: "Steve", password: nil, display_name: "S").valid?
  end

  test "User without a display_name is valid" do
    assert User.create(name: "Steve", password: "123").valid?
  end
end
