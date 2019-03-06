# == Schema Information
#
# Table name: products
#
#  id               :bigint(8)        not null, primary key
#  name             :string
#  bar_code         :string
#  internal_code    :string
#  product_category :integer
#  comment          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Product < ApplicationRecord
  has_many :invoice_items
end
