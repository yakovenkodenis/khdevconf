# == Schema Information
#
# Table name: organisers_contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contact_id :integer
#

class OrganisersContact < ActiveRecord::Base
  has_many :contacts

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
