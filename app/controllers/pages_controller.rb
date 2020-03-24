class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cgu, :contact, :equipe, :faq, :prix, :projet, :user]


  def home
  end

  def user
 @user = current_user
  end

  def prix
    @visittes = Product.all
  end

  def zoneadmin
  end

end
