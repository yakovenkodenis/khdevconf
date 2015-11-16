# == Schema Information
#
# Table name: contacts
#
#  id                    :integer          not null, primary key
#  contact               :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  contact_type_id       :integer
#  organisers_contact_id :integer
#

require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'validations' do
    it { should validate_presence_of :contact }
  end

  describe 'associations' do
    it { should have_one :contact_type }
    it { should belong_to :organisers_contact }
  end
end
