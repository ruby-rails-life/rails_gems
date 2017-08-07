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

    trait :as_name_color do
      name "rainbow"
      age 4
      color "colorful"      
    end

  end

  factory :invalid_plant, class: Plant do
    name ""
    age 2
    color "green"
  end

  factory :new_plant, class: Plant do
    name "pinkflower"
    age 3
    color "pink"
  end
  
end
