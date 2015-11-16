class AddContactIdToOrganisersContacts < ActiveRecord::Migration
  def change
    add_foreign_key :organisers_contacts, :contacts
  end
end
