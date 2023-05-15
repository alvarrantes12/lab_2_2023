require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Joshue",
                        last_name: "Mora",
                        email: "joshuem@gmail.com",
                        identification: 817263,
                        level: 2)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more then 10 letters" do
    subject.first_name = "aaaaaaaaaaa"
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more then 15 letters" do
    subject.last_name = "aaaaaaaaaaaaaaaa"
    expect(subject).to_not be_valid
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with invalid email format" do
    subject.email = "invalid_email"
    expect(subject).to_not be_valid
  end

  it "is not valid without identification" do
    subject.identification = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a identification with less then 5 numbers" do
    subject.identification = 0000
    expect(subject).to_not be_valid
  end

  it "is not valid with a identification with more then 8 numbers" do
    subject.identification = 000000000
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end
end