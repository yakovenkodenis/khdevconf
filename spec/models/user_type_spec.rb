# == Schema Information
#
# Table name: user_types
#
#  id          :integer          not null, primary key
#  type        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'rails_helper'

RSpec.describe UserType, type: :model do
  describe 'validations' do
    it { should validate_presence_of :type }
    it { should validate_uniqueness_of(:type).case_insensitive }
  end

  describe 'associations' do
    it { should belong_to :user }
  end
end
