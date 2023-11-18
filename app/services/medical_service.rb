require 'net/http'
require 'uri'
require 'json'


class MedicalService
  BASE_URL = 'https://api.fda.gov/drug/event.json'
  def self.fetch_drug_info(drug_class)
    url = URI("#{BASE_URL}/?search=patient.drug.openfda.pharm_class_epc:" + drug_class + "&limit=1")
    response = Net::HTTP.get_response(url)
    JSON.parse(response.body)
  end
end