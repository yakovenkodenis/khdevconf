class CreateJoinTableConferenceUser < ActiveRecord::Migration
  def change
    create_join_table :users, :conferences do |t|
      # t.index [:user_id, :conference_id]
      # t.index [:conference_id, :user_id]
    end
  end
end
