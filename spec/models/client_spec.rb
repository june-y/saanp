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

require 'rails_helper'

RSpec.describe Client, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
