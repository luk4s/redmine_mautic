RSpec.describe "Submit mautic form", type: :controller do
  let(:user) { { firstname: "John", lastname: "Doe", mail: "john@doe.com", language: Setting.default_language } }
  controller do
    def create
      @user = User.new(language: Setting.default_language, mail_notification: Setting.default_notification_option)
      @user.attributes = invite_params
      @user.login = @user.mail
      @user.generate_password = true
      @user.must_change_passwd = true
      @user.status = User::STATUS_ACTIVE

      Mautic::FormHelper.submit(url: "https://mautic.org", form: '6', request: request) do |data|
        data.mail = @user.mail
        data.firstname = @user.firstname
        data.lastname = @user.lastname
        data.ep_language = @user.language
      end

      render plain: "ok"
    end

    def invite_params
      permitted_params = [:firstname, :lastname, :mail, :easy_user_type_id, memberships: [:role_id, { project_ids: [] }]]
      permitted_params << :admin if User.current.admin?
      @invite_params ||= params.require(:user).permit(permitted_params)
    end
  end

  it "like onboarding" do
    stub = stub_request(:post, "https://mautic.org/form/submit").
      with(body: ({ 'mauticform' => hash_including({ 'mail' => user[:mail],
                                                    'firstname' => user[:firstname],
                                                    'lastname' => user[:lastname],
                                                    'ep_language' => user[:language],
                                                    'submit' => '1',
                                                    'formId' => '6' }) }))
    
    post :create, params: { user: user }
    expect(stub).to have_been_requested
  end

end