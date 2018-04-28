# Redmine interface for mautic rails gem

This [redmine](/redmine/redmine) feature allow to simply create new connection to your mautic for API integration

## Installation

Add to your gemfile

    gem "rys", github: "easysoftware/rys"
    gem "mautic_redmine", github: "luk4s/redmine_mautic"
    
Then run
    
    bundle install
    
And of course migrations

    rake db:migrate
    
## Usage

Connections list are manage on address `/redmine_mautic`.

Add new connection in 3+1 steps:

1. New button on `/redmine_mautic` > type your mautic URL and hit "create"
2. In your mautic create new API credentials and as callback url use url from form in redmine.
3. Copy keys from mautic to redmine form and press "update".
4. Hit "Authorize" button...

## Development

For development [ryspec](/easysoftware/ryspec) plugin is recommended

    gem 'ryspec', github: "easysoftware/ryspec"

## Contributing

Pull requests are welcome
