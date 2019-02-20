class CreateInvoiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_items do |t|
      t.integer :transaction_id
      t.integer :invoice_item_seq
      t.integer :taxable_flag
      t.decimal :quantity
      t.decimal :unit_price, precision: 20, scale: 2
      t.string :item_description
      t.references :product, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
