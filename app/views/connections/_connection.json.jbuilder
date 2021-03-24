json.extract! connection, :id, :first_name, :last_name, :twitter, :email, :phone, :created_at, :updated_at
json.url connection_url(connection, format: :json)
