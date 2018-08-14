class CreateLegalCases < ActiveRecord::Migration[5.2]
  def change
    create_table :legal_cases do |t|
      t.string :caseID
      t.boolean :isActive
      t.string :country
      t.belongs_to :client, index: true
      t.timestamps
    end
  end
end
