FactoryGirl.define do
  factory :book do
    association :author
    title  "Example title"
  end
end