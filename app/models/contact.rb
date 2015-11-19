class Contact < ActiveRecord::Base
  has_one :contact_type
  belongs_to :organisers_contact
end
