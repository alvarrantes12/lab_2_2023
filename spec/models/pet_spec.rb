require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject {
    described_class.new(first_name: "Mandarino Chubascos",
                        breed: "Chiuhahua Azteca",
                        pedigree: true,
                        owner: Owner.create(first_name: "Maria Guadalupe", last_name: "Vargas Matarrita Mora", email: "mariaguadalopevmm@gmail.com", identification: 12345, level: 1))
  } 

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without breed" do
    subject.breed = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without pedigree" do
    subject.pedigree = nil
    expect(subject).to_not be_valid
  end


  it "is not valid with a first_name with less than 10 letters" do
    subject.first_name = "asdfghjkl"
    expect(subject).to_not be_valid
  end

  it "is not valid with a breed with less than 10 letters" do
    subject.breed = "asdfghjkl"
    expect(subject).to_not be_valid
  end
end