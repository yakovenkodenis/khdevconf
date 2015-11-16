# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  email                  :string
#  about                  :text
#  username               :string
#  subscription           :boolean
#  company_name           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_type_id           :integer
#  sponsorship_plan_id    :integer
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  speech_id              :integer
#  conference_id          :integer
#

class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable, :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

  has_many :feedbacks
  has_many :speeches
  has_one :sponsorship_plan
  has_one :user_type, foreign_key: 'user_type_id'

  validates :first_name, :encrypted_password,
            :email, :user_type, presence: true
  validates :email, uniqueness: true,
                    email_format: { message: 'Not an email' }
end
