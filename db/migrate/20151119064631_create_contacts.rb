class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact
      t.references :organisers_contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
