# == Schema Information
#
# Table name: lives
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Life < ApplicationRecord
    has_many :life_universes
    has_many :universes, :through => :life_universes
end
