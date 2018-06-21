class Api::MessagesController < ApplicationController
    def index 
        @message = Language.find(params[:language_id]).messages
        render json: @message
    end

    def show
        @message = Message.find(params[:id])
        render json: @message
    end

    def create 
        @message= Language.find(params[:language_id]).messages
        @message.create!(message_params)
        render json: @message
    end

    def update 
        @message= Message.find(params[:id])
        @message.update!(message_params)
        render json: @message
    end

    def destroy 
        @message = message.find(params[:id])
        @message.destroy! 
        render status: 200
    end

    private
    def message_params
        params.require(:message).permit(:message, :sender, :recipient)
    end
end
