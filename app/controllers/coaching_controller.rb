class CoachingController < ApplicationController
  def ask
  end

  def answer
    @message = params[:message]
    @answer = coach_answer(@message)
  end
end

def coach_answer(message)
  if message.include? "?"
    "Silly question, get dressed and go to work!"
  elsif message.include? "I am going to work right now!"
  else
    "I don't care, get dressed and go to work!"
  end
end
