# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subtopic do
    topic nil
    user nil
    name "MyString"
  end
end
