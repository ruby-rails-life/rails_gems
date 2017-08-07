# == Schema Information
#
# Table name: plants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  color      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :plant do
    name "sunflower"
    age 1
    color "yellow"
  end

  factory :invalid_plant do
    name ""
    age 2
    color "green"
  end

  factory :new_plant do
    name "pinkflower"
    age 3
    color "pink"
  end
  
end
