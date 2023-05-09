require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject{
    described_class.new(first_name: "Test",
                        last_name: "Test L",
                        email: "test@gmail.com",
                        id_number: "123456")
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
end
