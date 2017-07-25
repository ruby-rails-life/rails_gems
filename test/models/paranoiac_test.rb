# == Schema Information
#
# Table name: paranoiacs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#  respect    :boolean
#
# Indexes
#
#  index_paranoiacs_on_deleted_at  (deleted_at)
#

require 'test_helper'

class ParanoiacTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
