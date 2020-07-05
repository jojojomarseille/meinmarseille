class LegalsController < ApplicationController
  def new
    @legal = Legal.new
  end

  def create
    @legal = Legal.create(legal_params)
    redirect_to "/pages/zoneadmin"

  end

  def index
    @legals = Legal.all
  end

def destroy
    Legal.find(params[:id]).destroy
    redirect_to "/legals"
  end

def show_admin
  @currentlegal = Legal.last
end

def update
  @currentlegal = Legal.last
    Legal.last.update title: params[:title], texte: params[:texte]

    if @currentlegal.update title: params[:title], texte: params[:texte]
      redirect_to "/pages/cgu"
    else
      render 'showadmin'
    end
  end


def legal_params
    params.require(:legal).permit( :title, :texte)
  end
end
