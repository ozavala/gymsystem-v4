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
