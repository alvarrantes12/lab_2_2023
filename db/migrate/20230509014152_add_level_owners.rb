class AddLevelOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :level, :integer
  end
end
