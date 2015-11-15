class AddSpeakerIdToConference < ActiveRecord::Migration
  def change
    add_column :conferences, :speaker_id, :integer
  end
end
