require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(name: "Zac",
                        breed: "Corgi",
                        pedigree: true,
                        owner: Owner.create(first_name: "Marco", last_name: "Zumbado", email: "Marco@gmail.com", identification: 234125, level: 1))
  }

  it "valid with valid attributes " do 
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a name with more then 10 letters" do
    subject.name = "sdfhsdhfsdhsd"
    expect(subject).to_not be_valid
  end

  it "is not valid without breed" do
    subject.breed = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with more then 10 letters" do
    subject.breed = "gfjdfgjdfjfdgxvasd"
    expect(subject).to_not be_valid
  end

  it "is not valid without pedigree" do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end
end