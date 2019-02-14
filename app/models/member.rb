class Member < ApplicationRecord
   extend Enumerize
  belongs_to :gymsite

  # enum level: [:beginner, :intermediate, :advanced, :professional]
  #enum membership_type: [:weekly, :monthly, :annual, :visit]
  # enum source: [:Facebook, :Instagram, :Presence, :Webpage, :Referral]

  # enum level: [{label: 'beginner', value: 1}, {label: 'intermediate', value: 2}, {label: 'advanced', value: 3}, {label: 'professional', value: 4}]
   # enum membership_type: {weekly: 1, monthly: 2, annual: 3, visit: 4}
  # enum source: [facebook: 1, instagram: 2, presence: 3, webpage: 4, referral: 5]
  enumerize :membership_type, in: {:weekly => 1, :monthly => 2, :annual => 3, :visit => 4}
  enumerize :level, in: {:beginner => 1, :intermediate => 2, :advanced => 3, :professional => 4}
  enumerize :source, in: {:Facebook => 1, :Instagram => 2, :Presence => 3, :Webpage => 4, :Referral =>5}
  #enumerize :source, in: [:Facebook , :Instagram , :Presence , :Webpage , :Referral ]
end
