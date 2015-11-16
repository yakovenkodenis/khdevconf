class AddTimetableIdToSpeech < ActiveRecord::Migration
  def change
    add_reference :speeches, :timetable, index: true, foreign_key: true
  end
end
