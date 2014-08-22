FactoryGirl.define do
  factory :artboard do
    association :author
    title  "Example title"
    image "string string"
    story "funny story"
  end
end