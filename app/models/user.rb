class User < ActiveRecord::Base
  has_many :feedbacks
  has_one :sponsorship_plan
  has_one :user_type, foreign_key: 'user_type_id'
end
