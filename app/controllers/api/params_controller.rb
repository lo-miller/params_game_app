class Api::ParamsController < ApplicationController
  
  def name
    @name = params[:name].upcase
    if params[:name][0].upcase == "A"
      @first_letter = "Hey, your name starts with the first letter of the alphabet!"
    else
      @first_letter = "Your name does not start with the first letter of the alphabet."
    end
    render "name.json.jb"
  end

  def guess
    @guess = params[:number_guess].to_i

    if @guess > 35
      @message = "you guessed too high"
    elsif @guess < 35
      @message = "you guessed too low"
    elsif @guess == 35
      @message = "you guessed just right"
    end

    render "guess.json.jb"
  end


end
