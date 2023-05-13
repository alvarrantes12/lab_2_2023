require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(name: "Dog",
                        race: "Bulldog",
                        pedigree: true)
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "isn´t valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "isn´t valid without race" do
    subject.race = nil
    expect(subject).to_not be_valid
  end

  it "isn´t valid without pedigree" do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end

  it "isn´t valid name with more than 10 letters" do
    subject.name = "fsdsafdfdssfs"
    expect(subject).to_not be_valid
  end

  it "isn´t valid race with more than 10 letters" do
    subject.race = "drghthewdsads"
    expect(subject).to_not be_valid
  end
end
