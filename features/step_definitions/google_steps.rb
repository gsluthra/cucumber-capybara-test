Given /^I am on google-com$/ do
  visit('http://www.google.com')
end

When /^I enter "([^"]*)"$/ do |term|
  fill_in('q',:with => term)
end

Then /^I should see results$/ do
  page.save_screenshot("/Users/gluthra/Projects/cucumber-capybara-test/screenshot-google.pdf")
  page.should have_css('div#res li')
end
