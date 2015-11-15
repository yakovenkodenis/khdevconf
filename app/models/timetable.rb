class Timetable < ActiveRecord::Base
  has_many :speeches
  belongs_to :conference
end
