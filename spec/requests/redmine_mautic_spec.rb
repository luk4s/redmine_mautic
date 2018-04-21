require_relative "../spec_helper"
RSpec.describe "/redmine_mautic", type: :request do
  it '#index' do
    get "/redmine_mautic"
    expect(response).to be_success
  end
end