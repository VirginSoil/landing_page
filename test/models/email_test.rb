require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "it validates presence of email attribute" do
    email = Email.new
    refute email.valid?
    email.email = "luke@example.com"
    assert email.valid?
  end
end
