require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'

require_relative 'support/requests_helper'

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  config.include FactoryBot::Syntax::Methods
  config.include RequestsHelper, :type => :request
  config.example_status_persistence_file_path = 'spec/examples.txt'

  config.before :suite do
    DatabaseCleaner.start
  end

  config.after :suite do
    DatabaseCleaner.clean
  end
end

