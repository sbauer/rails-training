FactoryBot.define do
  factory :director do
    name { Faker::Name.name }
    age { rand(100) }
  end
end
