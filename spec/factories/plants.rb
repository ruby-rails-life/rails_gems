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

  factory :sequence_plant, class: Plant do
    sequence(:name) { |n| "lavander_#{n}" }
    age 5
    color "purple"
  end

  factory :association_plant, class: Plant do
    name "peony"
    age 6
    color "pink"
    #mountain
    association :mountain, factory: :association_mountain, strategy: :build
  end

  factory :extend_plant, class: Plant do
    name "peach"
    color "red"
    # factory :age_plant do
    #   age 10
    # end
  end

  factory :age_plant, parent: :extend_plant do
    age 10
  end

  factory :trait_plant, class: Plant do
    name "apple"
    color "red"
    trait :type_young do
      age 2
    end
    
    factory :young_plant, traits: [:type_young]
  end

  factory :faker_plant, class: Plant do
    name { Faker::Name.name }
    age 4
    color { Faker::Color.color_name }
  end

  factory :g_faker_plant, class: Plant do
    name { generate :faker_name }
    age 10
    color { generate :faker_color }
  end

end
