class Country < ActiveHash::Base
  include ActiveHash::Associations
  has_many :people
  has_many :cities

  field :name
  create id: 1, name: 'China'
  create id: 2, name: 'JP'
end
