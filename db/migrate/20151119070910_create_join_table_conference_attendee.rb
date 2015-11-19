class CreateJoinTableConferenceAttendee < ActiveRecord::Migration
  def change
    create_join_table :conferences, :attendees do |t|
      # t.index [:conference_id, :attendee_id]
      # t.index [:attendee_id, :conference_id]
    end
  end
end
