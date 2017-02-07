class UserMailer < ApplicationMailer

  default from: 'vagabond.tester@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Vagabond!')
  end

end
