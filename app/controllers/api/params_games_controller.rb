class Api::ParamsGamesController < ApplicationController
  def name_action
    @name = params[:name]
    if @name[0] == 'A' or @name[0] == 'a'
      @name_message = "Hey! You're name starts with the first letter of the alphabet!"
    end
    render 'name_view.json.jbuilder'
  end

  def string_guessing_game
    @guess = params[:guess].to_i
    correct_number = 42

    if @guess > correct_number
      @message = "Guess lower"
    elsif @guess < correct_number
      @message = "Guess higher"
    else
      @message = "You got it, my dude!"
    end

    render 'string_guessing_game.json.jbuilder'

  end
end
