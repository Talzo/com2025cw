require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email"
    mail = ContactMailer.contact_email("matthew@me.com","Matttew Casey", "1234567890",@message = "Hello")
    assert_equal ['admin1@gmail.com'], mail.to
    assert_equal ['from@example.com'], mail.from
end
