class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :authorization_code
      t.string :autorization_no
      t.date :transaction_date
      t.date :invoice_date
      t.date :invoice_date
      t.decimal :amount, precision: 20, scale: 2
      t.references :gymsite, foreign_key: true
      t.references :member, foreign_key: true
      t.integer :invoice_status

      t.timestamps
    end
  end
end
