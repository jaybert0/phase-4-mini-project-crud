class SpicesController < ApplicationController

    def index
        render json: Spice.all
    end

    def create
        spices = Spice.create(spice_params)
        render json: spices, status: :created
    end

    def update
        spices = Spice.find(params[:id])
        spices.update(spice_params)
        render json: spices
    end

    def destroy
        spices = Spice.find(params[:id])
        spices.destroy
        head :no_content
    end
    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
