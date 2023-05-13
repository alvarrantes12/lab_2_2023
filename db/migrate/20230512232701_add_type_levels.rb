class AddTypeLevels < ActiveRecord::Migration[7.0]
  def change
    add_column :owners, :level_type, :integer
  end
end
