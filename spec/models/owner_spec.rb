require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Owner",
                        last_name: "Propio",
                        email: "owner@gmail.com",
                        identification: 20324034,
                        level: 0)
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "isn't valid without first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "isn't valid without last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "isn't valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "isn't valid without identification" do
    subject.identification = nil
    expect(subject).to_not be_valid
  end

  it "isn't valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "isn't valid first name with more than 10 letters" do
    subject.first_name = "Propietario"
    expect(subject).to_not be_valid
  end

  it "isn't valid last name with more than 15 letters" do
    subject.last_name = "dsffddsfdfdfdfsffdfsfdfedf"
    expect(subject).to_not be_valid
  end

  it "isn't valid email without RegEX format" do
    subject.email = "hs"
    expect(subject).to_not be_valid
  end

  it "isn't valid identification with less than 5 numbers" do
    subject.identification = 123
    expect(subject).to_not be_valid
  end

  it "isn't valid identification with more than 8 numbers" do
    subject.identification = 1234567890
    expect(subject).to_not be_valid
  end
end
