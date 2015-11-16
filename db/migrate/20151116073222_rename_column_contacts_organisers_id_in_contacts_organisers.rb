class RenameColumnContactsOrganisersIdInContactsOrganisers < ActiveRecord::Migration
  def change
    rename_column :contacts, :organisers_contacts_id, :organisers_contact_id
  end
end
