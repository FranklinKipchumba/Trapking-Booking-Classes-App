class PaymentsController < ApplicationController
    def index 
        payments = Payment.all
        render json: payments
    end
    def show
        payment = Payment.find(params[:id])
        render json: payment
    end
    def create
        payment = Payment.new(payment_params)
        if payment.save
            render json: payment, status: :created
        else
            render json: { errors: payment.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def update
        payment = Payment.find(params[:id])
        if payment.update(payment_params)
            render json: payment, status: :ok
        else
            render json: { errors: payment.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def destroy 
        payment = Payment.find(params[:id])
        payment.destroy
        head :no_content
    end

    private
    def payment_params
        params.require(:payment).permit(:transaction_id, :amount, :status, :user_id, :class_id, :payment_method)
    end
end
