class Api::ConversationsController < ApplicationController

  def index
    @conversations = Conversation.where({recipient_id: params[:recipient_id], sender_id: params[:sender_id]})
    render json: @conversations
  end

  def create
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      render status: 201, json: @conversation
    else
      render status: 404
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    render json: @conversation
  end

  def update
    @conversation = Conversation.find(params[:id]).update(conversation_params)
    render json: @conversation
  end

  def destroy
    @conversation = Conversation.destroy(params[:id])
    render json: @conversation
  end

  private

  def conversation_params
    params.require(:conversation).permit(:sender_id, :recipient_id)
  end

end
