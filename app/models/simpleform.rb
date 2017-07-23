class Simpleform < ApplicationRecord
    paginates_per 1
    belongs_to :simpleformp
    has_and_belongs_to_many :flavors
    validates :name, presence: true
end
