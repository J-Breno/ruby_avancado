json.extract! user, :id, :name, :email, :birthdate, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
