class CreateTrainingSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :training_sessions do |t|
      t.date :visit_date
      t.datetime :start_time
      t.datetime :end_time
      t.references :member, foreign_key: true
      t.references :gymsite, foreign_key: true

      t.timestamps
    end
  end
end
