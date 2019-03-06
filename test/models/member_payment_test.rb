# == Schema Information
#
# Table name: member_payments
#
#  id                 :bigint(8)        not null, primary key
#  due_date           :date
#  payment_date       :date
#  amount_due         :decimal(20, 2)
#  payment_amount     :decimal(20, 2)
#  payment_method     :integer
#  billing_account_id :bigint(8)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class MemberPaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
