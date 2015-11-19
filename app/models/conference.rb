class Conference < ActiveRecord::Base
  has_and_belongs_to_many :attendees, class_name: 'User'
  has_and_belongs_to_many :partners, class_name: 'User'
  has_and_belongs_to_many :speakers, class_name: 'User'
end
