require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Maria Guadalupe",
                        last_name: "Vargas Matarrita Mora",
                        email: "mariaguadalopevmm@gmail.com",
                        identification: 12345,
                        level: 1)
  } 

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without identification" do
    subject.identification = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with less than 10 letters" do
    subject.first_name = "asdfghjkl"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with less than 15 letters" do
    subject.last_name = "asdfghjklhgfds"
    expect(subject).to_not be_valid
  end

  it "is not valid without email format" do
    subject.email = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with a identification with less than 1000 numbers" do
    subject.identification = "1000"
    expect(subject).to_not be_valid
  end

  it "is not valid with a identification with more than 99999999 numbers" do
    subject.identification = "99999999999"
    expect(subject).to_not be_valid
  end

end