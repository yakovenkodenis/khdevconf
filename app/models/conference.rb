class Conference < ActiveRecord::Base
  has_and_belongs_to_many :attendees
  has_and_belongs_to_many :partners
  has_and_belongs_to_many :speakers
end
