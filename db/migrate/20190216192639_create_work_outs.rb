class CreateWorkOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :work_outs do |t|
      t.string :name
      t.text :description
      t.integer :repetions
      t.decimal :weight
      t.decimal :distance
      t.decimal :speed
      t.datetime :span
      t.references :training_session, foreign_key: true

      t.timestamps
    end
  end
end
