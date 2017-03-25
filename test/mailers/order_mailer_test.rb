require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Agile Store Order Confirmation", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["agilestore@example.com"], mail.from
    assert_match /1 x Product title1/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Agile Store Order Shipped", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["agilestore@example.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Product title1<\/td>/, mail.body.encoded
  end

end
