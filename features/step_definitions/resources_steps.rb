Given(/^I visit the resource page$/) do
  visit resources_path
end

When(/^I indicate I want to add a new resource$/) do
  find(:link, 'New resource').click
end

When(/^I fill and submit the form$/) do
  fill_in :resource_title, with: 'Some'
  fill_in :resource_description, with: 'Awesome resource'
  fill_in :resource_url, with: 'https://is.here.com'
  find(:button, 'Submit').click
end

Then(/^I should see new resource created$/) do
  page.should have_content 'Resource created'
end