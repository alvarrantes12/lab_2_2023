class CreateQuestion < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :question

      t.timestamps
    end
  end
end
