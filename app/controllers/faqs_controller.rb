class FaqsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

def new
 @faq = Faq.new
end

def create
  @faq = Faq.create(faq_params)
    redirect_to "/faqs/index_admin"
end

def index
  @faqs = Faq.all
end

def index_admin
    @faqs = Faq.all
  end

  def destroy
    Faq.find(params[:id]).destroy
    redirect_to "/faqs/index_admin"
  end

def show_admin
  @currentfaq = Faq.find(params[:id])
end

def update
  @currentfaq = Faq.find(params[:id])
    Faq.find(params[:id]).update question: params[:question], answer: params[:answer]

    if @currentfaq.update question: params[:question], answer: params[:answer]
      redirect_to "/faqs/index_admin"
    else
      render 'page/zoneadmin'
    end
  end


def faq_params
    params.require(:faq).permit( :question, :answer, :photo)
  end

end
