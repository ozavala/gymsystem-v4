class BillingAccount < ApplicationRecord
  belongs_to :member
  belongs_to :gl_account
end
