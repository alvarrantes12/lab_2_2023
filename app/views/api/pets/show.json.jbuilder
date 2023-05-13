json.pet do 
    json.id @pet.id
    json.first_name @pet.first_name
    json.breed @pet.breed
    json.pedigree @pet.pedigree
    json.owner do
        json.first_name @pet.owner.first_name
        json.last_name @pet.owner.last_name
        json.email @pet.owner.email  
        json.identifier @pet.owner.identifier  
        json.level @pet.owner.level    
    end
end