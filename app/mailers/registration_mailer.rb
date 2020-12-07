class RegistrationMailer < ApplicationMailer
  default from: "verificacionccuson@gmail.com"

  def registration_email(user, password)
    @user = user
    @password = password
    mail(to: @user.email, subject: 'Bienvenido a SIGEF')
  end
end
