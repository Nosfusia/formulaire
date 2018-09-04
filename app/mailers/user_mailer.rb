class UserMailer < ApplicationMailer
include SendGrid
default from: 'notifications@example.com'

  def welcome(email)
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
