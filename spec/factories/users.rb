# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    fname "MyString"
    lname "MyString"
    email "MyString"
    persistence_token "MyString"
  end
end
