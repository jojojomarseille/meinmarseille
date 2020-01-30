class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    #@user = params[:user] # Instance variable => available in view
    #mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
    @user = user
    @greeting = "hi!"
    mail to: @user.email, subject: "bonjour  user no :#{@user.id}"
  end
end

