class Api::MessagesController < ApplicationController
    def index 
        @messages = Language.find(params[:language_id]).messages
        render json: @messages
    end

    def show
        @message = Message.find(params[:id])
        render json: @message
    end

    def create 
        @message = Language.find(params[:language_id]).messages
        messageObject = message_params
        messageObject[:user_id] = params[:user_id]
        @message.create!(messageObject)
        render json: @message
    end

    def update 
        @message= Message.find(params[:id])
        @message.update!(message_params)
        render json: @message
    end

    def destroy 
        @message = Message.find(params[:id])
        @message.destroy! 
        render status: 200
    end

    private
    def message_params
        params.require(:message).permit(:recipient, :text)
    end
end
