class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      # redirect_to some_path - We can redirect to the conversation
    else
      render :new
    end
  end

  private

  def message_params
    # permit your params here
  end
end
