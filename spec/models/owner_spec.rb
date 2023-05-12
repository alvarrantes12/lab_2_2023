require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Owner",
                        last_name: "Owner 1",
                        email: "owner@example.com",
                        identification: "12345678")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name shorter than 3 letters" do
    subject.first_name = "A"
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name longer than 10 letters" do
    subject.first_name = "VeryLongFirstName"
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name shorter than 3 letters" do
    subject.last_name = "Ab"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name longer than 15 letters" do
    subject.last_name = "VeryLongLastNameWithMoreThan15Letters"
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with an invalid email format" do
    subject.email = "invalid_email"
    expect(subject).to_not be_valid
  end

  it "is not valid without an identification" do
    subject.identification = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with an identification longer than 8 characters" do
    subject.identification = "123456789"
    expect(subject).to_not be_valid
  end

  it "is not valid with a duplicated identification" do
    another_owner = Owner.new(first_name: "Another", last_name: "Owner", email: "another@example.com", identification: "12345678")
    another_owner.save

    expect(subject).to_not be_valid
  end
end
