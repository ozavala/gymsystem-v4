class AddForeignKeyToTrainer < ActiveRecord::Migration[5.2]
  def change
    add_reference :trainers, :gymsite, foreign_key: true
  end
end
