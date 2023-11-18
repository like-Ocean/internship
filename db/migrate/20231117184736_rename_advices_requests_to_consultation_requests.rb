class RenameAdvicesRequestsToConsultationRequests < ActiveRecord::Migration[7.1]
  def change
    rename_table :advices_requests, :consultation_requests
  end
end
