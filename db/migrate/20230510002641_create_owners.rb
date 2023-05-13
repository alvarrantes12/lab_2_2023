class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :identifier
      t.integer :level

      t.timestamps
    end
  end
end