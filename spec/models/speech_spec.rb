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

require 'rails_helper'

RSpec.describe Speech, type: :model do
  describe 'validations' do
    it { should validate_presence_of :speaker }
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :speech_start }
    it { should validate_presence_of :speech_finish }
    it { should validate_presence_of :qa_start }
    it { should validate_presence_of :qa_finish }
  end

  describe 'associations' do
    it { should belong_to :timetable }
    it { should belong_to :speaker }
  end
end
