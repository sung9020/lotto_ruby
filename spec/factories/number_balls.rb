FactoryBot.define do
  factory :number_ball do
    association :ticket, factory: :ticket
    number { Random.rand(1..46) }
  end
end