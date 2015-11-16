# == Schema Information
#
# Table name: sponsorship_plans
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SponsorshipPlan < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
