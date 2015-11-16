class AddForeignKeyToUser < ActiveRecord::Migration
  def change
    add_foreign_key :users, :user_types
  end
end
