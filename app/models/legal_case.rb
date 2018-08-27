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

class LegalCase < ApplicationRecord
  belongs_to :client
  attr_accessor :caseID, :isActive, :name, :country

  validates_presence_of :client_id, :name
end
