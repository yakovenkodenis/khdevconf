class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :conferences_users, :user_id
    # add_index :conferences_users, [:conference_id, :partner_id]
    add_index :conferences_users, :conference_id
    # add_index :conferences_users, [:attendee_id, :conference_id]
    # add_index :conferences_users, [:conference_id, :speaker_id]
    add_index :users, [:id, :type]
    # add_index :partnership_plans, :partner_id
    # add_index :speeches, :speaker_id
  end
end
