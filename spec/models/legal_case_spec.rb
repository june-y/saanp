require 'rails_helper'

RSpec.describe LegalCase, type: :model do
    context 'Associations' do
    it 'belongs_to client' do
      association = described_class.reflect_on_association(:client).macro
      expect(association).to eq :belongs_to
    end
  end
end
