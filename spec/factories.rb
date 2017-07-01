FactoryGirl.define do
  factory :resource do
    name "MyString"
    value 1
  end

  factory :list do
    name "MyString"
  end

  factory :task do
    description "MyString"
    due_date "2017-06-14 20:03:25"
    complete false
  end

  factory :user do
    first_name "John"
    last_name "Doe"
    email "john@example.com"
  end
end
