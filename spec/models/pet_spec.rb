require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject{
    described_class.new(name: "Dog",
                        raza: "Dog R",
                        pedigree: false,
                        owner: Owner.create(first_name: "Abcde", last_name: "Abcde", email: "abcd@gmail.com", id: 63204, level: 0)
                        )
                        
  }


  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without raza " do
    subject.raza  = nil
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

  it "is not valid with a raza  with more then 10 letters" do
    subject.raza = "sadhgkjsadgasd"
    expect(subject).to_not be_valid
  end
end
