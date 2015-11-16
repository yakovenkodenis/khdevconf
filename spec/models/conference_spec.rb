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

require 'rails_helper'

RSpec.describe Conference, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :date }
    it { should validate_presence_of :place }
  end

  describe 'associations' do
    it { should have_many :speakers }
    it { should have_many :attendees }
    it { should have_many :sponsors }

    it { should have_one :timetable }
  end
end
