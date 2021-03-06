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

class Simpleform < ApplicationRecord
  extend Enumerize

  paginates_per 1
  belongs_to :simpleformp
  has_and_belongs_to_many :flavors
  validates :name, presence: true
  validates :price, presence: true
  validates :content, presence: true

  # enumerize :season_suitable, in: [:spring, :summer, :autumn, :winter], default: :summer
  # enumerize :season_suitable, in: %w[spring summer autumn winter], i18n_scope: "season_suitable"
  # enumerize :season_suitable, in: %w[spring summer autumn winter], i18n_scope: "season_suitable", predicates: true
  # enumerize :season_suitable, in: %w[spring summer autumn winter], i18n_scope: "season_suitable", predicates: { prefix: true }
  # enumerize :season_suitable, in: {:spring => "1", :summer => "2", :autumn => "3", :winter => "4"}
  # enumerize :season_suitable, in: [:spring, :summer, :autumn, :winter], scope: true
  enumerize :season_suitable, in: [:spring, :summer, :autumn, :winter], multiple: true
end
