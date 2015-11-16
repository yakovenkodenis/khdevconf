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

class Conference < ActiveRecord::Base
  has_many :speakers, class_name: 'User',
                      foreign_key: 'speaker_id', dependent: :destroy
  has_many :attendees, class_name: 'User',
                       foreign_key: 'attendee_id', dependent: :destroy
  has_many :sponsors, class_name: 'User',
                      foreign_key: 'sponsor_id', dependent: :destroy
  has_one :timetable

  validates :name, :description, :date, :place, presence: true
end
