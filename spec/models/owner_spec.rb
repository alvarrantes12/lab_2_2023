require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Antony",
                        last_name: "Barrantes",
                        email: "lab@gmail.com",
                        number_id: 123456,
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

  it "is not valid without number_id" do
    subject.number_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with less than 4 letters" do
    subject.first_name = "asd"
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "kfhwtuidpdfs"
  end

  it "is not valid with a last_name with less than 4 letters" do
    subject.last_name = "poi"
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "kfhwtuiqwefasddddpdfs"
  end

end
