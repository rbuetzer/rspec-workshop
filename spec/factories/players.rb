FactoryGirl.define do
  factory :player, class: Player do
    name { Faker::Name.name }
  end
end
