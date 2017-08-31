FactoryGirl.define do
  factory :player, class: Player do
    name { Faker::Name.name }

    trait :perfect_player do
      games_played 10
      games_won 10
    end
  end
end
