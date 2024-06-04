class ApplicationController < ActionController::Base
  skip_forgery_protection

  def landing
    render({ :template => "/game_templates/landing" })
  end

  def rock
    @random_move = ["rock", "paper", "scissors"].sample
    @our_move = "rock"

    case @random_move
    when "rock"
      @result = "We tied!"
    when "paper"
      @result = "We lost!"
    when "scissors"
      @result = "We won!"
    end

    render({ :template => "/game_templates/results" })
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample
    @our_move = "paper"

    case @random_move
    when "rock"
      @result = "We won!"
    when "paper"
      @result = "We tied!"
    when "scissors"
      @result = "We lost!"
    end

    render({ :template => "/game_templates/results" })
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample
    @our_move = "scissors"

    case @random_move
    when "rock"
      @result = "We lost!"
    when "paper"
      @result = "We won!"
    when "scissors"
      @result = "We tied!"
    end

    render({ :template => "/game_templates/results" })
  end
end
