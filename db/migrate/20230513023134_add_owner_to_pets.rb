class AddOwnerToPets < ActiveRecord::Migration[7.0]
  def change
    add_reference :pets, :owner, null: false, foreign_key: true
  end
end
