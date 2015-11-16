# == Schema Information
#
# Table name: timetables
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  conference_id :integer
#

require 'rails_helper'

RSpec.describe Timetable, type: :model do
  describe 'validations' do
    it { should validate_presence_of :conference }
  end

  describe 'associations' do
    it { should belong_to :conference }
    it { should have_many :speeches }
  end
end
