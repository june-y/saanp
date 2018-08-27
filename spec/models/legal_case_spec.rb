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

require 'rails_helper'

RSpec.describe LegalCase, type: :model do
    context 'Associations' do
    it 'belongs_to client' do
      association = described_class.reflect_on_association(:client).macro
      expect(association).to eq :belongs_to
    end
  end
end
