# == Schema Information
#
# Table name: flavors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Flavor < ApplicationRecord
	has_and_belongs_to_many :simpleforms
end
