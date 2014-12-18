class HomeController < ApplicationController
  def index
    @All=Club.all
  end


  def single
    @Club = Club.find(params[:id])
  end

  def player
    #@Club = Club.find(params[:id])
    @Player = Player.find(params[:id])
  end

  def detail
    @Club = Club.find(params[:id])

    @Players = @Club.players
  end

end
