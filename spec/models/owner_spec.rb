require 'rails_helper'

RSpec.describe Owner, type: :model do
    subject {
    described_class.new(name: "Springfiel",
                        last_name: "Wikipediasxesrd",
                        email: "example@example.com",
                        identifier: 2792345,
                        level: 1)
    }
  
    it t('errors.empty') do
      expect(subject).to be_valid
    end
  
    it "Digite su nombre" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  
    it "Digite su apellido" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end
  
    it "Digite su email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  
    it "Digite su identificador" do
      subject.identifier = nil
      expect(subject).to_not be_valid
    end
  
    it "Digite su nivel" do
      subject.level = nil
      expect(subject).to_not be_valid
    end
  
    it "Digite su email" do
      subject.email = "example@example.com"
      expect(subject).to be_valid
    end
  
    it "Digite un email valido" do
      subject.email = "invalid_email_address"
      expect(subject).to_not be_valid
    end
  
    it "Digite un nombre de 10 caracteres" do
      subject.name = "djeuifhrgj"
      expect(subject).to be_valid
    end
  
    it "Digite un apellido de 15 caracteres" do
      subject.last_name = "fmeijfrihgendjufg"
      expect(subject).to_not be_valid
    end
  
    it "Digite un nivel del 1 al 3" do
      subject.level = 1
      expect(subject).to be_valid
    end
  
    it "Digite una identificacion de entre 5 y 8 numeros" do
      subject.identifier = 123456789
      expect(subject).to_not be_valid
    end
  end
  
