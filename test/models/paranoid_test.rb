# == Schema Information
#
# Table name: paranoids
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  paranoiac_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  deleted_at   :datetime
#
# Indexes
#
#  index_paranoids_on_deleted_at    (deleted_at)
#  index_paranoids_on_paranoiac_id  (paranoiac_id)
#
# Foreign Keys
#
#  fk_rails_...  (paranoiac_id => paranoiacs.id)
#

require 'test_helper'

class ParanoidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
