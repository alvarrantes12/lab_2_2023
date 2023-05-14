json.pet do
    json.id @pet.id
    json.name @pet.name
    json.owner_name @pet.owner.first_name
end
