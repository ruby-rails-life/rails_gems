# == Schema Information
#
# Table name: life_universes
#
#  id          :integer          not null, primary key
#  life_id     :integer
#  universe_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_life_universes_on_life_id      (life_id)
#  index_life_universes_on_universe_id  (universe_id)
#
# Foreign Keys
#
#  fk_rails_...  (life_id => lives.id)
#  fk_rails_...  (universe_id => universes.id)
#

class LifeUniverse < ApplicationRecord
  belongs_to :life
  belongs_to :universe
end
