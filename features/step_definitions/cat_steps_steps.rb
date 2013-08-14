Given(/^I am on the root page$/) do
  visit "/"
end

Then(/^I should see the list of cats$/) do
  @cats.each do |cat|
    page.should have_content(@cat.name)
    page.should have_content(@cat.gender)
    page.should have_content(@cat.breed)
  end
end

When(/^I follow "(.*?)"$/) do |text|
  click_link text
end

When(/^I add a new cat$/) do
  fill_in "Name", with: "Admiral Snuggles"
  choose "Male"
  select "Domestic Shorthair", from: "Breed"
  click_button "Add cat"
end

Then(/^I should see my cat in the list of cats$/) do
  page.should have_content "Admiral Snuggles"
  page.should have_content "Male"
  page.should have_content "Domestic Shorthair"
end

Given(/^I am on the cat list$/) do
  visit "/"
end

Given(/^I change his name to "(.*?)"$/) do |name|
  click_link @cat.name
  fill_in "Name", with: name
  click_button "Update cat"
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should_not have_content arg1
end
