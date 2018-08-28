class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.belongs_to :legal_case, index:  true, foreign_key: 'caseID'
      t.timestamps
    end

  end
end
