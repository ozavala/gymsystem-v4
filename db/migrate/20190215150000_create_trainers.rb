class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :skill
      t.text :note

      t.timestamps
    end
  end
end
