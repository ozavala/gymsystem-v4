# == Schema Information
#
# Table name: taxes_dues
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  amount      :decimal(20, 2)
#  invoice_id  :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TaxesDueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
