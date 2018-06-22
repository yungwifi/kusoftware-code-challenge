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
        @user_proficiency = Proficiency.find(params[:user_id]).proficiency_level
        @recipient_proficiency = Proficiency.find(message_params[:recipient]).proficiency_level
            if (@user_proficiency - @recipient_proficiency).abs <= 2
                  @message = Language.find(params[:language_id]).messages
                  messageObject = message_params
                  messageObject[:user_id] = params[:user_id]
                  @message.create!(messageObject)
                  render json: @message
            else 
                raise "Message Send Failed. Proficiency levels must be within two in order to send messages."
            end
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
