# == Schema Information
#
# Table name: invoice_items
#
#  id               :bigint(8)        not null, primary key
#  transaction_id   :integer
#  invoice_item_seq :integer
#  taxable_flag     :integer
#  quantity         :decimal(, )
#  unit_price       :decimal(20, 2)
#  item_description :string
#  product_id       :bigint(8)
#  invoice_id       :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class InvoiceItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
