class RenameAdviceRequestIdInConsultationRequests < ActiveRecord::Migration[7.1]
  def change
    rename_column :recommendations, :advices_request_id, :consultation_request_id
  end
end
