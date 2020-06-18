class ContactMailer < ApplicationMailer

  default from: "#{@contact}@gmail.com"
  default to: "********@gmail.com" #ここに自分のアドレスを入れています

  def received_email(contact)
    @contact = contact
    mail_subject = "You got a message from #{@contact.name}"
    mail(to: "iyasiken@gmail.com", subject:  mail_subject)
  end
end
