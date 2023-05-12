require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject{
    described_class.new(first_name: "David",
                        last_name: "Ramirez",
                        mail: "rangok@gmail.com",
                        owner_id: "162475",
                        level: 2)
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

  it "is not valid without mail" do
    subject.mail = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without owner_id" do
    subject.owner_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "iahsdgfiushaiguhasiu"
    expect(subject).to_not be_valid
  end

  it "is not valid with invalid mail format" do
    subject.mail = "sahdfsad"
    expect(subject).to_not be_valid
  end

  it "is not valid without owner_id" do
    subject.owner_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a owner_id with less then 5 numbers" do
    subject.owner_id = 0000
    expect(subject).to_not be_valid
  end

  it "is not valid with a owner_id with more then 8 numbers" do
    subject.owner_id = 000000000
    expect(subject).to_not be_valid
  end
end
