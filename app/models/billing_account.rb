class BillingAccount < ApplicationRecord
  belongs_to :member
  belongs_to :gl_account
  has_many :member_payments
end
