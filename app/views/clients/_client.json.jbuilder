json.extract! client, :id, :clientID, :name, :address, :created_at, :updated_at
json.url client_url(client, format: :json)
