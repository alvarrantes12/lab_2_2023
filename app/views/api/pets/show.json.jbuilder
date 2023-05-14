json.pet do
    json.id @pet.id
    json.name @pet.name
    json.breed @pet.breed
    json.pedigree @pet.pedigree
    json.owner_name @pet.owner.first_name
end
