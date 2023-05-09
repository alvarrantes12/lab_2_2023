require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Dueño1",
                        last_name: "Dueño1",
                        email: "david@gmail.com",
                        owner_id: 123456,
                        level: 1)
  }

  it "valid with valid attributes" do
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

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more then 15 letters" do
    subject.last_name = "ABCDEFGHIJKLMNOP"
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

  it "is not valid without owner_id" do
    subject.owner_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a owner_id with less then 5 numbers" do
    subject.owner_id = 1234
    expect(subject).to_not be_valid
  end

  it "is not valid with a owner_id with more then 8 numbers" do
    subject.owner_id = 123456789
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end
end

