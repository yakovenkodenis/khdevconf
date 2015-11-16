# == Schema Information
#
# Table name: sponsorship_plans
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

FactoryGirl.define do
  factory :sponsorship_plan do
    name "MyString"
description "MyText"
  end

end
