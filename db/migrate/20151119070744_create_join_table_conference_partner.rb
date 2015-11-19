class CreateJoinTableConferencePartner < ActiveRecord::Migration
  def change
    create_join_table :conferences, :partners do |t|
      # t.index [:conference_id, :partner_id]
      # t.index [:partner_id, :conference_id]
    end
  end
end
