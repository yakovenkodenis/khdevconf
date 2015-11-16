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

FactoryGirl.define do
  factory :user do
    first_name "MyString"
last_name "MyString"
email "MyString"
about "MyText"
username "MyString"
subscription ""
company_name "MyString"
  end

end
