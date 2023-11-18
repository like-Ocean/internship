require 'date'


module Api
  class ConsultationRequestsController < ApplicationController
    def create
      request = ConsultationRequest.create(
        patient_id: params[:patient_id],
        message: params[:message],
        creation_date: Time.now.strftime("%Y-%m-%d")
      )
      if request.save
        render json: {data: request}, status: :ok
      else
        render json: {errors: request.errors}, status: :unprocessable_entity
      end
    end
  end
end
