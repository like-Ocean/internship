Rails.application.routes.draw do
  namespace 'api' do
    get '/patients/:id/recommendations', to: 'patient#get_patient_recommendation'

    resources :consultation_requests do
      resources :recommendation
    end
  end
end
