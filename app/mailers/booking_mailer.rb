class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.creation_confirmation.subject
  #
  def creation_confirmation(booking)
    @booking = booking
    mail to: @booking.user.email, subject: "demande de reservation no #{@booking.id}"
  end
end
