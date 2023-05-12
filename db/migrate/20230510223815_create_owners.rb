class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :mail
      t.integer :owner_id
      t.integer :level

      t.timestamps
    end
  end
end