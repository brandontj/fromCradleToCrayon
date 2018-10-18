module WardenHelper
  RSpec.configure do |config|
    config.include Warden::Test::Helpers, type: :feature
    config.include self, type: :feature
  end

  def user_logged_in(user = create(:user))
    login_as(user, scope: :user)
  end
end
