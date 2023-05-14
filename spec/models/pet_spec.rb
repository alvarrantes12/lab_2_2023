require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject{
    described_class.new(name: "coco",
                        breed: "schnauzer",
                        pedigree: true,
                        owner: Owner.create(first_name: "Pamela",
                                            last_name: "Salas",
                                            email: "Salas@gmail.com", 
                                            identifier: "123456"))
  }

  it "valid with valid attributes " do
    expect(subject).to be_valid
  end 
end
