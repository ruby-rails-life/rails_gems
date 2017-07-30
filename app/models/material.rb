# == Schema Information
#
# Table name: materials
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  universe_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_materials_on_universe_id  (universe_id)
#
# Foreign Keys
#
#  fk_rails_...  (universe_id => universes.id)
#

class Material < ApplicationRecord
  belongs_to :universe
end
