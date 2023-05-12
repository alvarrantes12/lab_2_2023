require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject{
    described_class.new(name: "Luna",
                        breed: "Pitbul",
                        pedigree: true,
                        owner: Owner.create(first_name: "Javier", last_name: "Barrantes", mail: "javibr@gmail.com", owner_id: 63204, level: 0))
  }

  it "is valid with valid attributes" do
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

  it "is not valid without owner" do
    subject.owner = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a name with more then 10 letters" do
    subject.name = "sdghyasdsaddgsa"
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with more then 10 letters" do
    subject.breed = "sadhgkjsadgasd"
    expect(subject).to_not be_valid
  end
end