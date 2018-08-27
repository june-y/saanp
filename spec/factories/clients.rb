# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  clientID   :integer
#  name       :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :bigint(8)
#

FactoryBot.define do
  factory :client do
    clientID ""
    name "MyString"
    address "MyString"
  end
end
