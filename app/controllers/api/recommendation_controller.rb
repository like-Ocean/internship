module Api
  class RecommendationController < ApplicationController
    def create
      request = ConsultationRequest.find(params[:consultation_request_id])
      recommendation = request.build_recommendation(message: params[:message])
      if recommendation.save
        render json: {data: recommendation}, status: :ok
      else
        render json: {errors: recommendation.errors}, status: :unprocessable_entity
      end
    end
  end
end