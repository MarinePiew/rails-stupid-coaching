class CoachingController < ApplicationController


  def answer
    @answer = params["query"]
    @coach = coach_answer(@answer)
  end

  def ask

  end


  def coach_answer(your_message)
    return "No question!" unless your_message
    if your_message.downcase == "i am going to work right now!"
      ''
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
