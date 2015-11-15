class AddSponsorIdToConference < ActiveRecord::Migration
  def change
    add_column :conferences, :sponsor_id, :integer
  end
end
