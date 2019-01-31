require_relative "../spec_helper"

RSpec.describe "/redmine_mautic", type: :request do

  it '#index' do
    get "/redmine_mautic"
    expect(response).to have_http_status :success
  end

  it '#new' do
    get "/redmine_mautic/new"
    expect(response).to have_http_status :success
  end

  it '#create' do
    post "/redmine_mautic", params: { connection: { url: 'https://mautic.org' }}
    expect(response).to have_http_status :success
    expect(response.body).to include("connection[secret]")
  end

end