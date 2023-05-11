require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject{
    described_class.new(first_name: "Test",
                        last_name: "Test L",
                        email: "test@gmail.com",
                        id_number: "123456",
                        level: 0)
  }

  it "is valid with valid attributes" do
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

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "testtesttestesttest"
    expect(subject).to_not be_valid
  end

  it "is not valid with invalid email format" do
    subject.email = "testtest"
    expect(subject).to_not be_valid
  end

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less then 5 numbers" do
    subject.id_number = 1234
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more then 8 numbers" do
    subject.id_number = 123456789
    expect(subject).to_not be_valid
  end
end
