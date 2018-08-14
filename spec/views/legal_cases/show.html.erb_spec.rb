require 'rails_helper'

RSpec.describe "legal_cases/show", type: :view do
  before(:each) do
    @legal_case = assign(:legal_case, LegalCase.create!(
      :caseID => "Case",
      :isActive => false,
      :country => "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Case/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Country/)
  end
end
