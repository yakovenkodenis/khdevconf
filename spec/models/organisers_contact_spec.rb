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

require 'rails_helper'

RSpec.describe OrganisersContact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
