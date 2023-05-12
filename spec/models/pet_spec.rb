require 'rails_helper'

RSpec.describe Pet, type: :model do
  let(:owner) { Owner.create(first_name: "Test2", last_name: "Test2 L", email: "test2@gmail.com", id_number: "654321", level: 1) }
  subject{
    described_class.new(name: "Test",
                        race: "Test L",
                        pedigree: true,
                        owner: owner
                        )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without race" do
    subject.race = nil
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
    subject.name = "testtesttest"
    expect(subject).to_not be_valid
  end

  it "is not valid with a race with more then 10 letters" do
    subject.race = "testtesttestest"
    expect(subject).to_not be_valid
  end
end
