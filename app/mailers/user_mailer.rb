class UserMailer < ApplicationMailer
  default from: "icarejewels@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'icarejewels@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
  	@appname = "iCare Jewels"
  	mail(to: user.email,
       subject: "Welcome to #{@appname}!")
	end

  def purchase_confirmation(user, product)
    @product = product
    @user = user
    @appname = "iCare Jewels"
    mail(to: user.email,
       subject: "Thank You for your purchase from #{@appname}!")
  end

end