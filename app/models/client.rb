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

class Client < ApplicationRecord
  has_many :legal_cases
  accepts_nested_attributes_for :legal_cases
  attr_accessor :client_id, :name, :address, :legal_cases_attributes
end
