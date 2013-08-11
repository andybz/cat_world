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
