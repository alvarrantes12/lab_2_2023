require 'rails_helper'

RSpec.describe Owner, type: :model do
  subject {
    described_class.new(first_name: "Dueño1",
                        last_name: "Dueño2",
                        email: "dueno-123@example.com",
                        identity: 2082623,
                        level: 0)
  }

  it "valid with valid attributes"do
    expect(subject).to be_valid
  end 
  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name longer than 10 characters' do
    subject.first_name = 'aaaaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name shorter than 3 characters' do
    subject.first_name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without valid last_name with more than 10 letters"do
    subject.last_name = "jaytcprqocy"
    expect(subject).to_not be_valid
  end

  it 'is not valid with a last_name shorter than 3 characters' do
    subject.last_name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without email"do
    subject.identity = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without identity" do
    subject.identity = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.identity = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a duplicated identity' do
    existing_owner = described_class.create(first_name: 'AAAA', last_name: 'AAAAA', email: "AAAA-153@example.com", identity: 4321, level: 1)
    subject.identity = existing_owner.identity
    expect(subject).to_not be_valid
  end

end
