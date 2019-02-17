class GlAccount < ApplicationRecord
  belongs_to :account_type
  has_many :organization_accounts
  has_many :billing_accounts
  default_scope {order(acc_code: :asc)}
end
