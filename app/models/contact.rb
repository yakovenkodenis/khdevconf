# == Schema Information
#
# Table name: contacts
#
#  id              :integer          not null, primary key
#  contact         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  contact_type_id :integer
#

class Contact < ActiveRecord::Base
  has_one :contact_type
  belongs_to :organisers_contact
end
