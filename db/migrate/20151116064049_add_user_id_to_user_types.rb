class AddUserIdToUserTypes < ActiveRecord::Migration
  def change
    add_reference :user_types, :user, index: true, foreign_key: true
  end
end
