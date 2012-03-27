# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :translation do
    entry nil
    language nil
    word "MyString"
    notes "MyString"
  end
end
