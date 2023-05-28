json.array! @pets do |pet| 
    json.id pet.id
    json.name pet.name
    json.breed pet.breed
    json.pedigree pet.pedigree
    json.owner do
        json.first_name pet.owner.first_name
    end

end