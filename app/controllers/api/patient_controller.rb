module Api
  class PatientController < ApplicationController
    def get_patient_recommendation
      recommendations = []

      patient = Patient.find_by(id: params[:id])
      unless patient
        render json: {errors: 'Patient not found'}, status: :not_found
        return
      end

      for data in patient.consultation_requests
        if data.recommendation
          recommendations.append({
            id: data.recommendation.id,
            consultation_request: {
              consultation_request_id: data.id,
              message: data.message
            },
            message: data.recommendation.message
          })
        end
      end
      render json: {data: recommendations}, status: :ok
    end
  end
end
