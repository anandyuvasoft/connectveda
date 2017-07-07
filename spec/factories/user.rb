FactoryGirl.define do
  factory :user do
    first_name { Forgery('name').first_name }
    last_name { Forgery('name').last_name }
    email { Forgery(:internet).email_address }
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
    phone "1234567895"
  end
end