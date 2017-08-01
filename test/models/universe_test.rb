# == Schema Information
#
# Table name: universes
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  materials_count :integer
#

require 'test_helper'

class UniverseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
