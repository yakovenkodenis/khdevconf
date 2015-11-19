class AddReferenceToPartnershipPlan < ActiveRecord::Migration
  def change
    add_reference :partners, :partnership_plan, index: true, foreign_key: true
  end
end
