class Person < ActiveHash::Base
  include ActiveHash::Associations
  belongs_to :country
  fields :name, :gender

  add id: 1, name: 'John', gender: :male, country_id: 1
  add id: 2, name: 'Mike', gender: :male, country_id: 1
  add id: 3, name: 'Amy', gender: :female, country_id: 2
end
