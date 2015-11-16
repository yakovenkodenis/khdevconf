class AddConferenceIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :conference, index: true, foreign_key: true
  end
end
