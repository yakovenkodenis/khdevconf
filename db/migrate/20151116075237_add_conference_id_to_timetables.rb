class AddConferenceIdToTimetables < ActiveRecord::Migration
  def change
    add_reference :timetables, :conference, index: true, foreign_key: true
  end
end
