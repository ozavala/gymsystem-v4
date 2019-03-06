# == Schema Information
#
# Table name: billing_accounts
#
#  id               :bigint(8)        not null, primary key
#  balance          :decimal(20, 2)
#  status           :integer
#  member_id        :bigint(8)
#  payment_due_date :date
#  gl_account_id    :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class BillingAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
