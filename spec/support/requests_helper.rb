module RequestsHelper
  def setup_fake_sso user_id
    user = instance_double(
      'User',
      id: user_id,
      user_name: 'username',
      display_name: 'displayname'
    )
    Rack::FakeSso.payload = Rack::FakeSso.create_payload(user)

    {
      "HTTP_COOKIE" => "#{RackSso.config.cookie_name}=a_valid_token;"
    }
  end
end
