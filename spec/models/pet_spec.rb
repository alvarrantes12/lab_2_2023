require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(name: "Misifus",
                        breed: "egipcia",
                        pedigree: true,
                        owner: Owner.create(first_name:"Anything",
                                              last_name: "Lorem ipsum",
                                              email: "asd@gmail.com",
                                              identification_numer: 12345))
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

  it "is not valid with a name with more than 10 letters" do
    subject.name = "Misifusiort"
    expect(subject).to_not be_valid
  end 

  it "is not valid with a breed with more than 10 letters" do
    subject.breed = "egipciatoronto"
    expect(subject).to_not be_valid
  end 

end
