class UserMailer < ApplicationMailer
  default from: "icarejewels@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'icarejewels@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end