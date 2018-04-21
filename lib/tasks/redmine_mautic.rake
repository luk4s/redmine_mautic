if !Rails.env.production? && defined?(EasyCore) && defined?(RSpec)
  require 'rspec/core/rake_task'

  namespace :redmine_mautic do
    desc 'Runs rspec tests'
    RSpec::Core::RakeTask.new(:spec) do |task, task_args|
      args = []
      args << '--require' << EasyCore::Engine.root.join('spec/spec_helper')

      task.rspec_opts = args
      task.pattern = RedmineMautic::Engine.root.join('spec/**/*_spec.rb')
    end
  end
end
