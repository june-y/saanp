class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.numeric :client_id
      t.string :name
      t.string :address
      t.timestamps

    create_table :legal_cases do |t|
      t.string :caseID
      t.belongs_to :client, index:  true, foreign_key: 'client_id'
      t.timestamps
      end
    end
  end
end
