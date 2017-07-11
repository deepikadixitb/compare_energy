Requirements: Ruby version 2.2.0 or greater

If Ruby < 2.2.0 then

Install RVM as per instructions on https://rvm.io/rvm/install to upgrade ruby

To get started we firstly need the bundler gem (http://bundler.io/): gem install bundler

Install dependencies:

bundle install

Run tests:

bundle exec cucumber # runs all tests 

bundle exec cucumber <feature_folder> # runs all tests in that folder 

bundle exec cucumber <feature_folder>/<feature_file> # runs all tests in that feature

Note:

By default tests will run in Chrome but Chromedriver must be installed and added to PATH. Chromedriver can be downloaded from here: https://sites.google.com/a/chromium.org/chromedriver/getting-started















 