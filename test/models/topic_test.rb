# == Schema Information
#
# Table name: topics
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  content         :text(65535)
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  prefecture_code :integer
#
# Indexes
#
#  index_topics_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
