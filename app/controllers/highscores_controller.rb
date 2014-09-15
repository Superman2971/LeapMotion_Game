class HighscoresController < ApplicationController

  def index
    @highscores = Highscore.all
  end

  def game
    @name = params[:name]
    @highscores = Highscore.all
    @top_score = 0
    @highscores.each do |x|
      if x.score > @top_score
        @top_score = x.score
      end
    end
  end

  def highscore
    name = params[:initials]
    score = params[:score]
    Highscore.create!(initials: name, score: score)
  end

end
