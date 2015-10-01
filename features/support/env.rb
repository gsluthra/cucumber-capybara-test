require "Capybara"
require "Capybara/cucumber"
require "rspec"
require "capybara/poltergeist"

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  args = []
  args << "--window-size=1024,9000"
  options = {
      :js_errors => true,
      :timeout => 120,
      :debug => false,
      :phantomjs_options => ['--ignore-ssl-errors=true', '--disk-cache=true',
                             '--max-disk-cache-size=50000', '--load-images=false',
                             '--web-security=false'],
      :inspector => true,
  }
  Capybara::Poltergeist::Driver.new(app, options)
end