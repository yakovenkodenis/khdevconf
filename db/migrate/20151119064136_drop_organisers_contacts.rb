class DropOrganisersContacts < ActiveRecord::Migration
  def change
    drop_table :organisers_contacts
    drop_table :contacts
    drop_table :contact_types
  end
end
