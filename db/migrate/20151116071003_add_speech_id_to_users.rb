class AddSpeechIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :speech, index: true, foreign_key: true
  end
end
