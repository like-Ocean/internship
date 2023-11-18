class Patient < ApplicationRecord
  has_many :consultation_requests
end
