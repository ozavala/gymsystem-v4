# == Schema Information
#
# Table name: organization_accounts
#
#  id                :bigint(8)        not null, primary key
#  from_date         :date
#  to_date           :date
#  gymsite_id        :bigint(8)
#  gl_account_id     :bigint(8)
#  account_period_id :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class OrganizationAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
