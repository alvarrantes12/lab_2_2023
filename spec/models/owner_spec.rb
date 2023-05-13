require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name:"Anything",
                          last_name: "Lorem ipsum",
                          email: "asd@gmail.com",
                          identification_numer: 12345)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without identification_numer" do
    subject.identification_numer = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "Jonathannnn"
    expect(subject).to_not be_valid
  end  

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "Salazar Castro27"
    expect(subject).to_not be_valid
  end  

  it "is not valid with a identification_numer with less than 5 letters" do
    subject.identification_numer = "12"
    expect(subject).to_not be_valid
  end  

  it "is not valid with a identification_numer with more than 8 letters" do
    subject.identification_numer = "123456789"
    expect(subject).to_not be_valid
  end  
end
