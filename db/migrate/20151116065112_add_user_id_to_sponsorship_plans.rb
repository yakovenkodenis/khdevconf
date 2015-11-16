class AddUserIdToSponsorshipPlans < ActiveRecord::Migration
  def change
    add_reference :sponsorship_plans, :user, index: true, foreign_key: true
  end
end
