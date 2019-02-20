class CreateBillingAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :billing_accounts do |t|
      t.decimal :balance, precision: 20, scale: 2
      t.integer :status
      t.references :member, foreign_key: true
      t.date :payment_due_date
      t.references :gl_account, foreign_key: true

      t.timestamps
    end
  end
end
