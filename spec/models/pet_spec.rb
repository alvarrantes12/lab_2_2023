require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(name: "Teo",
                        breed: "Chihuahua",
                        pedigree: true,
                        owner: Owner.create(first_name: "Isaac",
                                            last_name: "Villalobos",
                                            email: "smpp@gmail.com",
                                            number_id: 2836824,
                                            level: 2))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without breed" do
    subject.breed = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without pedigree" do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a name with less than 2 letters" do
    subject.name = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with less than 3 letters" do
    subject.breed = "aa"
    expect(subject).to_not be_valid
  end
  
  it "is not valid with a name with more than 10 letters" do
    subject.name = "abcdefghijk"
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with more than 10 letters" do
    subject.breed = "abcdefghijk"
    expect(subject).to_not be_valid
  end
end
