require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "it validates presence of email attribute" do
    email = Email.new
    refute email.valid?
    email.email = "luke@example.com"
    assert email.valid?
  end

  test "it validates uniqueness of email" do
    email = Email.new(email: "luke@example.com")
    assert email.save
    email2 = Email.new(email: "luke@example.com")
    refute email2.valid?
  end
end
