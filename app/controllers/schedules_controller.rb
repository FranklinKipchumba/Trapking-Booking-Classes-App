class SchedulesController < ApplicationController
    def index 
        schedules = Schedule.all
        render json: schedules
    end
    def show
        schedule = Schedule.find(params[:id])
        render json: schedule
    end
    def create
        schedule = Schedule.new(schedule_params)
        if schedule.save
            render json: schedule, status: :created
        else 
            render json: { errors: schedule.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def update
        schedule = Schedule.find(params[:id])
        if schedule.update(schedule_params)
            render json: schedule, status: :ok
        else
            render json: { errors: schedule.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def destroy
        schedule = Schedule.find(params[:id])
        schedule.destroy
        head :no_content
    end

    private
    def schedule_params
        params.require(:schedule).permit(:class_id, :start_time, :end_time, :availability)
    end
end
