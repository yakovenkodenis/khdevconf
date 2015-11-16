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

FactoryGirl.define do
  factory :organisers_contact do
    name "MyString"
  end

end
