require 'rails_helper'

RSpec.describe "legal_cases/new", type: :view do
  before(:each) do
    assign(:legal_case, LegalCase.new(
      :caseID => "MyString",
      :isActive => false,
      :country => "MyString"
    ))
  end

  it "renders new legal_case form" do
    render

    assert_select "form[action=?][method=?]", legal_cases_path, "post" do

      assert_select "input[name=?]", "legal_case[caseID]"

      assert_select "input[name=?]", "legal_case[isActive]"

      assert_select "input[name=?]", "legal_case[country]"
    end
  end
end
