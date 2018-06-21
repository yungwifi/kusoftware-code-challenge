class Api::LanguagesController < ApplicationController
    def index 
        @languages = Language.all
        render json: @languages
    end

    def show 
        @language = Language.find(params[:id])
        render json: @language
    end

    def create 
        @language = Language.create!(language_params)
        render json: @language
    end

    def update 
        @language = Language.find(params[:id])
        @language.update!(language_params)

        render json: @language
    end

    def destroy
        @language = Language.find(params[:id])
        @language.destroy
        render status: 200
    end

    private
    def language_params
        params.require(:language).permit(:name, :proficiency_average)
    end
end
