class CreateAccountPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :account_periods do |t|
      t.date :from_date
      t.date :to_date
      t.references :period_type, foreign_key: true
      t.references :gymsite, foreign_key: true

      t.timestamps
    end
  end
end
