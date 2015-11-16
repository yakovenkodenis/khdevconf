# == Schema Information
#
# Table name: timetables
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  conference_id :integer
#

class Timetable < ActiveRecord::Base
  has_many :speeches
  belongs_to :conference

  validates :conference, presence: true
end
