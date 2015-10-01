# Testing a remote app with Cucumber+Capybara+Poltergeist+PhantomJS

Granted, this is a really simple combination, but I ran into a few hurdles on my first attempt,
and thought someone might benefit from my feeding github this working, minimal example of using
Cucumber, Capybara, Poltergeist and PhantomJS to execute web tests against a remote application.

Make sure you install (PhantomJS)[http://phantomjs.org/download.html] first on your machine.
For mac osx, you can just do a `brew install phantomjs`. If you have rvm installed on your
machine (recommended), then I have already checked in `.ruby-version` and `.ruby-gemset` to ensure
your gem installation doesn't clash with existing ruby environment setups.

Steps to run the tests

    bundle install
    bundle exec cucumber

