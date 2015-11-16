# == Schema Information
#
# Table name: speeches
#
#  id            :integer          not null, primary key
#  speaker_id    :integer
#  name          :string
#  description   :text
#  speech_start  :time
#  speech_finish :time
#  qa_start      :time
#  qa_finish     :time
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  timetable_id  :integer
#

FactoryGirl.define do
  factory :speech do
    speaker_id 1
name "MyString"
description "MyText"
speech_start "2015-11-15 17:46:07"
speech_finish "2015-11-15 17:46:07"
qa_start "2015-11-15 17:46:07"
qa_finish "2015-11-15 17:46:07"
  end

end
