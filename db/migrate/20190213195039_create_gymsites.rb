class CreateGymsites < ActiveRecord::Migration[5.2]
  def change
    create_table :gymsites do |t|
      t.string :name
      t.string :legal_id
      t.text :description
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :phone
      t.integer :phone_type
      t.string :email
      t.string :logo
      t.date :from_date
      t.date :to_date
      t.timestamps
    end
  end
end
