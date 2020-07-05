class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cgu, :contact, :equipe, :faq, :prix, :projet, :user]


  def home
  end

  def cgu
    @currentlegal = Legal.last
  end

  def user
 @user = current_user
  end

  def prix
    @visittes = Product.all
  end

  def zoneadmin
    @user= User.all
    @messages = Contact.all
    @bookings = Booking.all
    @visittes = Product.last(3)
    @legals = Legal.all
  end

end
