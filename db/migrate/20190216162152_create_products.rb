class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :bar_code
      t.string :internal_code
      t.integer :product_category
      t.string :comment

      t.timestamps
    end
  end
end
