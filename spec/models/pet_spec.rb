require 'rails_helper'
RSpec.describe Pet, type: :model do
  subject {
    described_class.new(first_name: "Pet1",
                        breed: "Salchicha",
                        pedigree: false,
                        owner: Owner.create(first_name: "Owner", last_name: "Owner", email: "owner1@gmail.com", identification: 000000, level: 1))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
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

  it "is not valid with a first_name with more then 10 letters" do
    subject.first_name = "Pet1Pet1Pet1Pet1"
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with more then 10 letters" do
    subject.breed = "BreedBreedBreedBreedBreed"
    expect(subject).to_not be_valid
  end
end
