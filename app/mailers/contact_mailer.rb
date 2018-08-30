class ContactMailer < ApplicationMailer

  def send_contact(name, email, subject, message)
    @name, @email, @subject, @message = name, email, subject, message
    mail(to: 'jonatas.hermann@gmail.com', subject: 'Contact From Personal Website')
  end

end
