# == Schema Information
#
# Table name: plants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  color      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Plant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
