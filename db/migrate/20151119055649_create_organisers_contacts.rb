class CreateOrganisersContacts < ActiveRecord::Migration
  def change
    create_table :organisers_contacts do |t|
      t.string :name

      t.timestamps null: false
    end

    add_reference :organisers_contacts, :contact, index: true, foreign_key: true
  end
end
