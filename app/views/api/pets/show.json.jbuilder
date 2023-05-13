json.pet do 
    json.id @pet.id
    json.name @pet.name
    json.raza @pet.raza
    json.pedigree @pet.pedigree
    json.owner do
        json.first_name @pet.owner.first_name
        json.last_name @pet.owner.last_name
        json.email @pet.owner.email  
        json.id_owner @pet.owner.id_owner
        json.level @pet.owner.level    
    end
end