require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(first_name: "Bruno",
                        breed: "Pastor",
                        pedigree: false,
                        owner: Owner.create(first_name: "David", last_name: "Hidalgo", email: "David@.com", identifier: 15436, level: 0))
  }

  it "valid with valid attributes " do 
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more then 10 letters" do
    subject.first_name = "ABCDEFGHIJk"
    expect(subject).to_not be_valid
  end

  it "is not valid without breed" do
    subject.breed = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with more then 10 letters" do
    subject.breed = "ABCDEFGHIJKLMNOP"
    expect(subject).to_not be_valid
  end

  it "is not valid without pedigree" do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end
end
