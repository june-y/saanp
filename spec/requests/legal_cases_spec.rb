require 'rails_helper'

RSpec.describe "LegalCases", type: :request do
  describe "GET /legal_cases" do
    it "works! (now write some real specs)" do
      get legal_cases_path
      expect(response).to have_http_status(200)
    end
  end
end
