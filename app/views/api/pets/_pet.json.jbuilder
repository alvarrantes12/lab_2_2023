json.extract! pet, :id, :name, :raza, :pedigree, :created_at, :updated_at
json.url pet_url(pet, format: :json)
