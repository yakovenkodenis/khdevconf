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

FactoryGirl.define do
  factory :contact do
    contact "MyString"
ContactType nil
  end

end
