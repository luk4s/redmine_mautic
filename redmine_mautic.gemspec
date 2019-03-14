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
  s.license     = 'GPL-2.0-or-later'

  s.files = Dir['{app,config,db,lib,patches}/**/{*,.*}', 'Rakefile', 'README.md', 'gems.rb']
  s.test_files = Dir['test/**/*', 'spec/**/*']

#  s.add_dependency 'rys' # https://github.com/easysoftware/rys
  s.add_dependency 'redmine_extensions'

  s.add_dependency 'mautic', '~> 2.0'

  # s.add_development_dependency 'ryspec', '>=0.2.2' # https://github.com/easysoftware/ryspec

end
