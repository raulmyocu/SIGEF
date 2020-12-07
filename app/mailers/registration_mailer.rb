class RegistrationMailer < ApplicationMailer
  default from: "verificacionccuson@gmail.com"

  def registration_email(user, password, token)
    @user = user
    @password = password
    @token = token
    mail(to: @user.email, subject: 'Bienvenido a SIGEF')
  end
end
