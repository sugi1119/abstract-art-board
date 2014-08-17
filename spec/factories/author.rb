FactoryGirl.define do
  factory :author do
    name  "Example Example"
    email       "user@example.com"
    password    "foobar1234"
    password_confirmation "foobar1234"
  end
end