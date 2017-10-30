class QuestionsController < ApplicationController

  def answer
    if  @query = params[:query]
      @coach_answer = coach_answer_enhanced(@query)
    else
      @coach_answer = "You haven't entered anything, you dumb ass! Trying to break my code ?"
    end
  end

  def ask
  end

  def home
  end
end


def coach_answer(your_message)
  return "Ok good, finally" if your_message == "I am going to work right now!"
  return "Silly question, get dressed and go to work!" if your_message[your_message.length - 1] == "?"
  return "I don't care, get dressed and go to work!"
end

def coach_answer_enhanced(your_message)
  if your_message == your_message.upcase && "I am going to work right now!".upcase == your_message
    return "Ok good, finally"
  elsif your_message == your_message.upcase
    return 'I can feel your motivation! ' + coach_answer(your_message)
  else
    coach_answer(your_message)
  end
end
