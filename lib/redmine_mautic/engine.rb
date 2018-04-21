require 'rys'

module RedmineMautic
  class Engine < ::Rails::Engine
    include Rys::EngineExtensions

    initializer 'redmine_mautic.setup' do
      # Custom initializer
    end

  end
end
