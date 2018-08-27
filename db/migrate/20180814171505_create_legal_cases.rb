class CreateLegalCases < ActiveRecord::Migration[5.2]
  def change
    create_table :legal_cases do |t|
      t.string :caseID
      t.boolean :isActive
      t.string :country
      t.belongs_to :client, index: true, foreign_key: 'clientID'

      t.timestamps
    end

    create_table :clients do |t|
      t.numeric :client_id
      t.string :name
      t.timestamps
    end


  end
end
