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

class Item < ApplicationRecord
  belongs_to :legal_case
  validates_presence_of :legal_case_id, :name
end
