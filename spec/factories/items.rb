# == Schema Information
#
# Table name: items
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  description   :text
#  legal_case_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :item do
    name "MyString"
    description "MyText"
    references ""
  end
end
