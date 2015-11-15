class AddContactToOrganisersContacts < ActiveRecord::Migration
  def change
    add_reference :organisers_contacts, :contact, index: true
  end
end
