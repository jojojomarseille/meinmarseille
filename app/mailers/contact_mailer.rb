class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_mail.subject
  #
  def contact_mail(contact)
    @contact = contact
    mail to: "bourquardez.joachim@gmail.com", subject: "MeinMarseille Demande de contact no #{@contact.id}"
  end
end
