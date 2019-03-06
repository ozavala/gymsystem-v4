# == Schema Information
#
# Table name: members
#
#  id               :bigint(8)        not null, primary key
#  email            :string
#  password_digest  :string
#  gymsite_id       :bigint(8)
#  first_name       :string
#  last_name        :string
#  street_address   :string
#  city             :string
#  state            :string
#  zip              :string
#  phone            :string
#  birthday         :date
#  is_active        :boolean
#  avatar           :string
#  notes            :text
#  from_date        :date
#  to_date          :date
#  level            :integer
#  membership_type  :integer
#  membership_price :decimal(, )
#  source           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Member < ApplicationRecord
   extend Enumerize
  belongs_to :gymsite
  has_many :schedules, through: :gymsites
  has_many :billing_accounts
  has_many :training_sessions

  enumerize :membership_type, in: {:weekly => 1, :monthly => 2, :annual => 3, :visit => 4}
  enumerize :level, in: {:beginner => 1, :intermediate => 2, :advanced => 3, :professional => 4}
  enumerize :source, in: {:Facebook => 1, :Instagram => 2, :Presence => 3, :Webpage => 4, :Referral =>5}
  #enumerize :source, in: [:Facebook , :Instagram , :Presence , :Webpage , :Referral ]
end
