# == Schema Information
#
# Table name: gl_accounts
#
#  id              :bigint(8)        not null, primary key
#  acc_code        :string
#  acc_parent_code :string
#  name            :string
#  description     :string
#  account_type_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class GlAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
