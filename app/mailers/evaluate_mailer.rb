class EvaluateMailer < ApplicationMailer
    default from: "verificacionccuson@gmail.com"

  def approve_email(user, event)
    @user = user
    @event = event
    mail(to: @user.email, subject: 'Actualización sobre su solicitud en SIGEF')
  end
  def reject_email(user, event)
    @user = user
    @event = event
    mail(to: @user.email, subject: 'Actualización sobre su solicitud en SIGEF')
  end
end
