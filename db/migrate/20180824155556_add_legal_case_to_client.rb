class AddLegalCaseToClient < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :client, foreign_key: true
  end
end
