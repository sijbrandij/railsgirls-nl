Given(/^that I am a logged in user$/) do
  @email = Faker::Internet.email
  @user = FactoryGirl.create :user, email: @email, :password => 'letmeinplease', :password_confirmation => 'letmeinplease'
  visit '/users/sign_in'
  fill_in 'Email', with: @email
  fill_in 'Password', with: 'letmeinplease'
  click_on 'Log in'
end
