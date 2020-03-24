class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
  end


  def create
    @user = current_user
  @contact = Contact.create contenu: params[:contenu], sujet: params[:sujet], mail: params[:mail], user_id: @user.id
  redirect_to root_path
    ContactMailer.contact_mail(@contact).deliver_now
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to "/home"
  end
end
