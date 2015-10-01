Given /^I am on sony-co-uk$/ do
  visit('http://www.sony.co.uk')
end

When(/^I click on "(.*?)" menu$/) do |menu_name|
  click_link(menu_name)
end

Then(/^I should see "(.*?)" page$/) do |arg1|
  page.save_screenshot('/Users/gluthra/Projects/cucumber-capybara-test/screenshot.pdf')
  page.should  have_css('h2.t5', :text => 'Support')
end