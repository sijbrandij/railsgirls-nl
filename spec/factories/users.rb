FactoryGirl.define do

  factory :user do
    
    email                       { Faker::Internet.email }
    password                    { "railsisomakase" }
    password_confirmation       { "railsisomakase" }
  end

end
