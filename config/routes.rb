Rails.application.routes.draw do

  # Usually definition
  #
  # get 'redmine_mautic_issue_1', to: 'issues#index'

  # Conditional definition
  #
  # get 'redmine_mautic_issues_2', to: 'issues#index', rys_feature: 'redmine_mautic.issue'

  # Conditional block definiton
  #
  # rys_feature 'redmine_mautic.issue' do
  #   get 'redmine_mautic_issues_3', to: 'issues#index'
  # end

  rys_feature 'redmine_mautic' do
    resources :redmine_mautic do
      member do
        get :authorize
        get :oauth2
      end
    end
  end

  # get '/redmine_mautic', to: 'redmine_mautic#index'
end
