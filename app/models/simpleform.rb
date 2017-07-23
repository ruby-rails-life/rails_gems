class Simpleform < ApplicationRecord
    belongs_to :simpleformp
    validates :name, presence: true
end
