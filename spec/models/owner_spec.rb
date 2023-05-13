require 'rails_helper'
  RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "pepe",
                        last_name: "Perez",
                        email: "algo@gmail.com",
                        identifier: 25255)
  }
  it "is valid with valid attributes" do
    expect(subject). to be_valid
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

  it "is not valid without identifier" do
  subject.identifier = nil
  expect(subject).to_not be_valid
  end
  
end
