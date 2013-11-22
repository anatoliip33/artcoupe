require 'test_helper'

class FeedbackMailerTest < ActionMailer::TestCase
   def test_welcome_email
    user = users(:some_user_in_your_fixtures)

    # Посылаем email, затем тестируем, если оно не попало в очередь
    email = UserMailer.welcome_email(user).deliver
    assert !ActionMailer::Base.deliveries.empty?

    # Тестируем, содержит ли тело посланного email то, что мы ожидаем
    assert_equal [user.email], email.to
    assert_equal 'Welcome to My Awesome Site', email.subject
    assert_match "<h1>Welcome to example.com, #{user.name}</h1>", email.body.to_s
    assert_match 'you have joined to example.com community', email.body.to_s
  end
end
