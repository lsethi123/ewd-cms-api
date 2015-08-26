class Api::MessagesController < ApplicationController
  include ActionController::Live

  def index
    @messages = Message.last(10)
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render status: 201, json: @message
    else
      render status: 404
    end
  end

  def message_params
    params.require(:message).permit(:message, :user_id, :conversation_id)
  end

end
