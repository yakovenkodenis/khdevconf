# == Schema Information
#
# Table name: contact_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contact_id :integer
#

class ContactType < ActiveRecord::Base
  belongs_to :contact

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
