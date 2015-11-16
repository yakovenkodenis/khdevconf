# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  feedback   :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Feedback, type: :model do
  describe 'validations' do
    it { should validate_presence_of :feedback }
    it { should_validate_presence_of :user }
  end

  describe 'associations' do
    it { should belong_to :user }
  end
end
