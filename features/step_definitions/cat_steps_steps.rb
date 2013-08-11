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
