class PetsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :error_message
wrap_parameters format: []

    def index 
        pets = Pet.all 
        render json: pets
    end

    def show
        pet = pet_find
        if pet
            render json: pet
        else
            error_message
        end
    
    end

    def create
        pet = Pet.create(pet_params)
        render json: pet, status: :created        
    end

    def update
        pet = pet_find
        if pet
            pet.update(pet_params)
            render json: pet, status: :accepted
        else
            error_message
        end
    end

    def destroy
        pet = pet_find
        if pet
            pet.destroy
            head :no_content
        else
            error_message
        end
    end


private

    def pet_params
        params.permit(:breed, :name, :age, :weight, :gps_chip, :shelter_id)
    end

    def pet_find
        Pet.find_by(id: params[:id])
    end

    def error_message
        render json: {error:"Pet not found"}, status: :not_found
    end
    
end
