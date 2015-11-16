# == Schema Information
#
# Table name: contact_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :contact_type do
    name "MyString"
  end

end
