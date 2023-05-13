require 'rails_helper'
  RSpec.describe Pet, type: :model do
  subject {
    described_class.new(name: "Pepe",
                        breed: "Pastor",
                        pedigree: true,
                        owner: Owner.create(first_name: "John", last_name: "Black", email: "algo@gmail.com",
                          identifier: 25255))
  }
  it "is valid with valid attributes" do
    expect(subject). to be_valid
  end

  it "is not valid without first_name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
  subject.breed = nil
  expect(subject).to_not be_valid
  end

  it "is not valid without email" do
  subject.pedigree = nil
  expect(subject).to_not be_valid
  end
end
