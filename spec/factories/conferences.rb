# == Schema Information
#
# Table name: conferences
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  date        :datetime
#  place       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  speaker_id  :integer
#  attendee_id :integer
#  sponsor_id  :integer
#

FactoryGirl.define do
  factory :conference do
    name "MyString"
description "MyText"
date "2015-11-15 17:22:42"
place ""
  end

end
