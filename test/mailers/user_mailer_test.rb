require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  def welcome
    user = "sylvaindelva@hotmail.fr"
    UserMailer.welcome(user)
end
