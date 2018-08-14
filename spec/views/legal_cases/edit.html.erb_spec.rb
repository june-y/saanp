require 'rails_helper'

RSpec.describe "legal_cases/edit", type: :view do
  before(:each) do
    @legal_case = assign(:legal_case, LegalCase.create!(
      :caseID => "MyString",
      :isActive => false,
      :country => "MyString"
    ))
  end

  it "renders the edit legal_case form" do
    render

    assert_select "form[action=?][method=?]", legal_case_path(@legal_case), "post" do

      assert_select "input[name=?]", "legal_case[caseID]"

      assert_select "input[name=?]", "legal_case[isActive]"

      assert_select "input[name=?]", "legal_case[country]"
    end
  end
end
