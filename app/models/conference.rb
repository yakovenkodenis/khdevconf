class Conference < ActiveRecord::Base

  has_many :speakers, class_name: 'User',
                      foreign_key: 'speaker_id', dependent: :destroy
  has_many :attendees, class_name: 'User',
                       foreign_key: 'attendee_id', dependent: :destroy
  has_many :sponsors, class_name: 'User',
                      foreign_key: 'sponsor_id', dependent: :destroy
end
