class AnswersController < ApplicationController
  def answer
    @question = params[:question].downcase
    @answer = "I don't care, get dressed and go to work!"
    if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work".downcase
      @answer = "Great!"
    end
    @answer
  end
end
