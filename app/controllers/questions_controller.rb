class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
      elsif @question == "i am going to work"
        @answer = "great"
      elsif @question.end_with?("?")
        @answer = "silly question, get dressed and go to work!"
      else
        @answer =  "I don't care, get dressed and go to work!"
    end
  end
end
