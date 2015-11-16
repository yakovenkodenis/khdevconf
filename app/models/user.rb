class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable, :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

  has_many :feedbacks
  has_one :sponsorship_plan
  has_one :user_type, foreign_key: 'user_type_id'
end
