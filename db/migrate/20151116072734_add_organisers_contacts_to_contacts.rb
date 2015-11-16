class AddOrganisersContactsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :organisers_contacts_id, :integer
  end
end
