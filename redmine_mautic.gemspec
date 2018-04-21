$:.push File.expand_path('lib', __dir__)

require 'redmine_mautic/version'

Gem::Specification.new do |s|
  s.name        = 'redmine_mautic'
  s.version     = RedmineMautic::VERSION
  s.authors     = ['Lukáš Pokorný']
  s.email       = ['luk4s.pokorny@gmail.com']
  s.homepage    = 'https://github.com/luk4s'
  s.summary     = 'Integration mautic rails gem with Redmine'
  s.description = 'https://github.com/luk4s/mautic-rails'
  s.license     = 'GNU/GPL 2'

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile', 'README.md', 'gems.rb', 'dependencies.rb']
  s.test_files = Dir['test/**/*', 'spec/**/*']

  s.add_dependency 'rys'
  s.add_dependency 'mautic', '~> 0.1.6'
end
