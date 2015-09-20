require 'rack/test'
require 'rspec'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'medbay'

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app() Medbay::App end
end

RSpec.configure do |config|
  config.include RSpecMixin
end
