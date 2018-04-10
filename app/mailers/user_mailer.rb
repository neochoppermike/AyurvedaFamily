class UserMailer < ApplicationMailer
  default from: "p-pois@hotmail.co.uk"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'p-pois@hotmail.co.uk',
         subject: "A new contact form message from #{name}")
  end

end
