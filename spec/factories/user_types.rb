# == Schema Information
#
# Table name: user_types
#
#  id          :integer          not null, primary key
#  type        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :user_type do
    type ""
description "MyText"
  end

end
