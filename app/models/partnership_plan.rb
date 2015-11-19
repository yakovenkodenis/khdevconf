class PartnershipPlan < ActiveRecord::Base
  has_many :partnership_perks
  belongs_to :partner
end
