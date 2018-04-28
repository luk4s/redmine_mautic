# Dependencies which are loaded in main application or in dummy application
# All gems must be in "rys" group

group :rys do
  group :default do
    gem 'rys', github: 'easysoftware/rys', branch: 'master'
    gem 'ryspec', github: 'easysoftware/ryspec', branch: 'master'
  end

  group :development do
  end

  group :test do
    gem 'webmock'
    gem 'factory_bot_rails'
    gem 'rspec-rails'
    gem 'poltergeist'
    gem 'database_cleaner', '~> 1.6.1'
    gem 'capybara'
#    gem "selenium-webdriver"
  end
end
