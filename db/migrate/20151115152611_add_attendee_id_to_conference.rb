class AddAttendeeIdToConference < ActiveRecord::Migration
  def change
    add_column :conferences, :attendee_id, :integer
  end
end
