require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject { 
    described_class.new(first_name: "Jesus",
                        last_name: "Rodriguez",
                        email: "smpp@gmail.com",
                        number_id: 2846338,
                        level: 2)
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

  it "is not valid without number_id" do
    subject.number_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with less than 2 letters" do
    subject.first_name = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with less than 2 letters" do
    subject.last_name = "a"
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "abcdefghijk"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "abcdefghijklmnop"
    expect(subject).to_not be_valid
  end

  it "is not valid with a number_id with less than 5 numbers" do
    subject.number_id = 1234
    expect(subject).to_not be_valid
  end

  it "is not valid with a number_id with more than 8 numbers" do
    subject.number_id = 123456789
    expect(subject).to_not be_valid
  end
end