require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(name: "Pet Name",
                        breed: "Pet Breed",
                        pedigree: true,
                        owner: Owner.new)
  }


  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a name shorter than 3 characters" do
    subject.name = "A"
    expect(subject).to_not be_valid
  end

  it "is not valid with a name longer than 10 characters" do
    subject.name = "VeryLongName"
    expect(subject).to_not be_valid
  end

  it "is not valid without a breed" do
    subject.breed = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed shorter than 3 characters" do
    subject.breed = "A"
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed longer than 10 characters" do
    subject.breed = "VeryLongBreed"
    expect(subject).to_not be_valid
  end

  it "is not valid without a pedigree" do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end
end
