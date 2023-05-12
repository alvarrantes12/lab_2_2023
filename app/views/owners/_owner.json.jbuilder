json.extract! owner, :id, :first_name, :last_name, :email, :identifier, :created_at, :updated_at
json.url owner_url(owner, format: :json)
