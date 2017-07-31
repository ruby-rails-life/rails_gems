# == Schema Information
#
# Table name: spaces
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Space < ApplicationRecord
	has_many :eachtimes, as: :eachtimeable
end
