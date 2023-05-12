json.pet do
    json.name @pet.name
    json.breed @pet.breed
    json.pedigree @pet.pedigree
    json.owner do
        json.first_name @pet.owner.first_name
        json.last_name @pet.owner.last_name
        json.level @pet.owner.level
    end
end