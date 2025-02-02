class GameController < ApplicationController
  def rules
    render({:template => "game_templates/rules"})
  end

  def rock
    our_move = "rock"
    their_move = ["rock", "paper", "scissors"].sample
    result = ""
    if their_move == "rock"
      result = "tied"
    elsif their_move == "paper"
      result = "lost"
    elsif their_move == "scissors"
      result = "won"
    end
    @results = [our_move, their_move, result]
    render({:template => "game_templates/results"})
  end

  def paper
    our_move = "paper"
    their_move = ["rock", "paper", "scissors"].sample
    result = ""
    if their_move == "rock"
      result = "won"
    elsif their_move == "paper"
      result = "tied"
    elsif their_move == "scissors"
      result = "lost"
    end
    @results = [our_move, their_move, result]
    render({:template => "game_templates/results"})
  end

  def scissors
    our_move = "scissors"
    their_move = ["rock", "paper", "scissors"].sample
    result = ""
    if their_move == "rock"
      result = "lost"
    elsif their_move == "paper"
      result = "won"
    elsif their_move == "scissors"
      result = "tied"
    end
    @results = [our_move, their_move, result]
    render({:template => "game_templates/results"})
  end
end
