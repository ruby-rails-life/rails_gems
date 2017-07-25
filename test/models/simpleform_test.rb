# == Schema Information
#
# Table name: simpleforms
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  content           :text(65535)
#  popular           :boolean
#  season_suitable   :string(255)
#  production_date   :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  expiration_period :integer
#  producing_area    :string(255)
#  simpleformp_id    :integer
#  price             :integer
#
# Indexes
#
#  index_simpleforms_on_simpleformp_id  (simpleformp_id)
#
# Foreign Keys
#
#  fk_rails_...  (simpleformp_id => simpleformps.id)
#

require 'test_helper'

class SimpleformTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
