class AddSponsorshipPlanToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :sponsorship_plan, index: true
  end
end
