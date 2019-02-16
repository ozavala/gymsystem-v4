class CreateMemberPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :member_payments do |t|
      t.date :due_date
      t.date :payment_date
      t.decimal :amount_due, precision: 20, scale: 2
      t.decimal :payment_amount, precision: 20, scale: 2
      t.integer :payment_method
      t.references :billing_account, foreign_key: true

      t.timestamps
    end
  end
end
