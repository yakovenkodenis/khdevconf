class AddPartnershipPlanToUser < ActiveRecord::Migration
  def change
    add_reference :users, :partnership_plan, index: true, foreign_key: true
  end
end
