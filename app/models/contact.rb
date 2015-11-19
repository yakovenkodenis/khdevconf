class Contact < ActiveRecord::Base
  belongs_to :organisers_contact
  has_one :contact_type
end
