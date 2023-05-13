class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.boolean :pedigree
      t.belongs_to :director

      t.timestamps
    end
  end
end
