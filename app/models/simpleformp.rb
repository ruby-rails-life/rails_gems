# == Schema Information
#
# Table name: simpleformps
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Simpleformp < ApplicationRecord
	has_many :simpleforms
end
