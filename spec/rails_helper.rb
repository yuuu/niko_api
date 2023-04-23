# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
require 'support/authorization_helper'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.include AuthorizationHelper, type: :request
  config.include Committee::Rails::Test::Methods
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.add_setting :committee_options
  config.committee_options = {
    schema_path: Rails.root.join('openapi', 'reference', 'niko.yaml').to_s,
    strict_reference_validation: true,
    parse_response_by_content_type: false
  }
end
