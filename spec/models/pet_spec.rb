require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject{
    described_class.new(name: "Mascota",
                        breed: "Bulldog",
                        pedigree: true,
                        owner: Owner.create(first_name:"Juana", last_name: "Perez", email: "juana-234@gmail.com", identity: 123444, level: "gold" ))
  }

  it "valid with valid attributes"do
    expect(subject).to be_valid
  end

  it "is not valid without valid name"do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without valid breed"do
    subject.breed = nil
    expect(subject).to_not be_valid
  end


  it 'is not valid with a name shorter than 3 characters'do
    subject.name = "Jo"
    expect(subject).to_not be_valid
  end

  it 'is not valid with a breed shorter than 3 characters'do
     subject.breed = "Jo"
     expect(subject).to_not be_valid
  end

  it "is not valid without valid name with more than 10 letters"do
    subject.name = "jaytcprqocy"
    expect(subject).to_not be_valid
  end

  it "is not valid without valid breed with more than 10 letters"do
    subject.breed = "jaytcprqocy"
    expect(subject).to_not be_valid
  end

  it "is not valid without valid breed with more than 10 letters"do
    subject.breed = "jaytcprqocy"
    expect(subject).to_not be_valid
  end
  it "is not valid without valid pedigree"do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end
end
