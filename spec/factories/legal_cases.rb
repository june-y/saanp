# == Schema Information
#
# Table name: legal_cases
#
#  id         :bigint(8)        not null, primary key
#  caseID     :string
#  isActive   :boolean
#  country    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :legal_case do
    caseID "MyString"
    isActive false
    country "MyString"
    client
  end
end
