class DanceClassesController < ApplicationController
    def index
        danceclasses = DanceClass.all
        render json: danceclasses 
    end
    def show
        danceclass = DanceClass.find(params[:id])
        render json: danceclass 
    end
    def create
        if danceclass.save
            render json: danceclass, status: :created
        else
            render json: {errors: danceclass.errors.full_messages}, status: :unprocessible_entity
        end
    end
    def update
        danceclass = DanceClass.find(params[:id])
        if danceclass.update(danceclass_params)
            render json: danceclass, status: :ok
        else
            render json: {errors: danceclass.errors.full_messages}, status: :unprocessible_entity
        end
    end
    def destroy 
        danceclass = DanceClass.find(params[:id])
        danceclass.destroy
        head :no_content
    end

    private
    def danceclass_params
        params.require(:danceclass).permit(:classname, :description, :duration, :capacity)
    end
end
