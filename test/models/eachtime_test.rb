# == Schema Information
#
# Table name: eachtimes
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  eachtimeable_id   :integer
#  eachtimeable_type :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_eachtimes_on_eachtimeable_id_and_eachtimeable_type  (eachtimeable_id,eachtimeable_type)
#

require 'test_helper'

class EachtimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
