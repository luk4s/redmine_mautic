# RedmineMautic

## Development

##### By path (default)

Into gem file

    gem 'redmine_mautic', path: PLUGIN_PATH


##### By git

Into gem file

    gem 'redmine_mautic', git: 'git@git.cz:plugins/redmine_mautic.git'

Into shell

    bundle config local.redmine_mautic PLUGIN_PATH


##### By redmine plugin

Ensure you have redmine plugin for rys plugins

    rails generate rys:redmine:plugin REDMINE_PLUGIN

Move plugin

    mv PLUGIN_PATH REDMINE_PLUGIN/local
