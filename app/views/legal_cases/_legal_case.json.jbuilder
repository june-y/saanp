json.extract! legal_case, :id, :caseID, :isActive, :country, :created_at, :updated_at
json.url legal_case_url(legal_case, format: :json)
