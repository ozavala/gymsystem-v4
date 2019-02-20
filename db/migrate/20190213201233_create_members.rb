class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :email
      t.string :password_digest
      t.references :gymsite, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.date :birthday
      t.boolean :is_active
      t.string :avatar
      t.text :notes
      t.date :from_date
      t.date :to_date
      t.integer :level
      t.integer :membership_type
      t.decimal :membership_price
      t.integer :source

      t.timestamps 
    end
  end
end
