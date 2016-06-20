Given(/^that I am a logged in user$/) do
  @user = FactoryGirl.create :user, email: Faker::Internet.email, :password => 'letmeinplease', :password_confirmation => 'letmeinplease'
end
