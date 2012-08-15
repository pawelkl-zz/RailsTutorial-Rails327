FactoryGirl.define do
  factory :user do
    name     "Pawel Klosiewicz"
    email    "pawelkl@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
    factory :user_hartl do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
