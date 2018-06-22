class Api::ProficienciesController < ApplicationController
    def index 
        @proficiencies = Language.find(params[:language_id]).proficiencies
        render json: @proficiencies
    end

    def show
        @proficiency = Proficiency.find(params[:id])
        render json: @proficiency
    end

    def create 
        @proficiency = Language.find(params[:language_id]).proficiencies
        proficiencyObject = proficiency_params
        proficiencyObject[:user_id] = params[:user_id]
        @proficiency.create!(proficiencyObject)
        render json: @proficiency
    end

    def update 
        @proficiency = Proficiency.find(params[:id])
        @proficiency.update!(proficiency_params)
        render json: @proficiency
    end

    def destroy 
        @proficiency = Proficiency.find(params[:id])
        @proficiency.destroy! 
        render status: 200
    end

    private
    def proficiency_params
        params.require(:proficiency).permit(:proficiency_level)
    end
end
