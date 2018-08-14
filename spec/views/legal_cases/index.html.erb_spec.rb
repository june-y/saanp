require 'rails_helper'

RSpec.describe "legal_cases/index", type: :view do
  before(:each) do
    assign(:legal_cases, [
      LegalCase.create!(
        :caseID => "Case",
        :isActive => false,
        :country => "Country"
      ),
      LegalCase.create!(
        :caseID => "Case",
        :isActive => false,
        :country => "Country"
      )
    ])
  end

  it "renders a list of legal_cases" do
    render
    assert_select "tr>td", :text => "Case".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
