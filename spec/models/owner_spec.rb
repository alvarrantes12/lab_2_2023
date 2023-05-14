require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Raquel",
                        last_name: "Arias",
                        email: "raquelarias2010@hotmail.com",
                        id_number: 123456,
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

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with less than 4 letters" do
    subject.first_name = "abc"
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "raquelariasmurillo"
  end

  it "is not valid with a last_name with less than 4 letters" do
    subject.last_name = "abc"
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "raquelariasmurillo"
  end

end