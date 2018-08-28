class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.numeric :client_id
      t.string :name
      t.string :address
      t.string :primary_pm
      t.timestamps
    end


  end
end
