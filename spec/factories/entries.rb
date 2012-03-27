# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    language nil
    word "MyString"
    subtopic nil
  end
end
