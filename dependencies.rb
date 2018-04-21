# Dependencies which are loaded in main application or in dummy application
# All gems must be in "rys" group

git_source(:easy_git){ |name| "git@git.easy.cz:platform-2.0/#{name}.git" }

group :rys do
  group :default do
    gem 'rys', easy_git: 'rys', branch: 'master'
    gem 'easy_core', easy_git: 'easy_core', branch: 'master'
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
    gem "selenium-webdriver"
  end
end
