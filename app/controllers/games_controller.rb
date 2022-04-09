class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0..9]
  end

  def score
    @score = ""
    search = params[:score]
    if search == @letters
      @score = "Congratulations! #{score.capitalize} is a valid English word!"
    else
      @score = "Sorry but #{score.capitalize} does not seem to be a valid English word"
    end
  end
end
