class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :race
      t.boolean :pedigree

      t.timestamps
    end
  end
end
