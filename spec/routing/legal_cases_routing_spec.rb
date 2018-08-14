require "rails_helper"

RSpec.describe LegalCasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/legal_cases").to route_to("legal_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/legal_cases/new").to route_to("legal_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/legal_cases/1").to route_to("legal_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/legal_cases/1/edit").to route_to("legal_cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/legal_cases").to route_to("legal_cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/legal_cases/1").to route_to("legal_cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/legal_cases/1").to route_to("legal_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/legal_cases/1").to route_to("legal_cases#destroy", :id => "1")
    end

  end
end
