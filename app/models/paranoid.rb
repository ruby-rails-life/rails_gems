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

class Paranoid < ApplicationRecord
  belongs_to :paranoiac
  # acts_as_paranoid :dependent_recovery_window => 1.minutes
  belongs_to :paranoiac_including_deleted, class_name: 'Paranoiac', foreign_key: 'paranoiac_id', with_deleted: true
end
