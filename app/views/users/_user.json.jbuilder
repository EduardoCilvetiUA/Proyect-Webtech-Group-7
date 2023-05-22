json.extract! user, :id, :name, :email, :google_account_id, :password, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
