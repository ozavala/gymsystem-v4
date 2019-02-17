class CreateTaxesDues < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes_dues do |t|
      t.string :description
      t.decimal :amount, precision: 20, scale: 2
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
