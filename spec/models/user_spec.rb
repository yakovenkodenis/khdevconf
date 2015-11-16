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
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :encrypted_password }
    it { should validate_presence_of :email }
    it { should validate_presence_of :user_type }

    it { should validate_uniqueness_of(:email).case_insensitive }

    it { should allow_value('John').for(:first_name) }
    it { should allow_value('Smith').for(:last_name) }
    it { should allow_value('example@email.com').for(:email) }

    it { should_not allow_value('example.com').for(:email) }
  end

  describe 'associations' do
    it { should have_many :feedbacks }
    it { should have_one(:user_type).with_foreign_key(:user_type_id) }
  end
end
