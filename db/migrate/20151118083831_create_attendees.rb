class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :username
      t.string :company_name
      t.boolean :subscription

      t.timestamps null: false
    end
  end
end
