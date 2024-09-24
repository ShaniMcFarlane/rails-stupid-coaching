class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @message = [ "Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!" ]
    if params[:question] === "I am going to work"
      # I am going to work, the coach will answer Great!
      @message = @message[0]
      # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    elsif params[:question].include?("?")
      @message = @message[1]
      # Otherwise the coach will answer I don't care, get dressed and go to work!
    else
      @message = @message[2]
    end
  end
end
