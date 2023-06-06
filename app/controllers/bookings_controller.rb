class BookingsController < ApplicationController
    skip_before_action :authorize_request, only: [:show, :update, :destroy, :create]

    def index
        bookings = Booking.all 
        render json: bookings
    end
    def show 
        booking = Booking.find(params[:id])
        render json: booking
    end
    def create
        booking = Booking.new(booking_params)
        if booking.save
            render json: booking, status: :created, location: booking
        else 
            render json: {errors: booking.errors.full_messages}, status: :unprocessible_entity
        end
    end
    def update
        if booking.update(booking_params)
            render json: booking
        else 
            render json: {errors: booking.errors.full_messages}, status: :unprocessible_entity
        end
    end
    def destroy
        booking.destroy
        render json: { booking: 'Booking was successfully destroyed.' }
    end
    
    private
    def booking_params
        params.require(:booking).permit(:user_id, :class_id, :time, :date)
    end
end
