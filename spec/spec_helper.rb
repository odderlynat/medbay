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

Medbay.configure do |config|
  fake_check = Medbay::Test.new('Redis', lambda {
    passed = false

    begin
      passed = true
    rescue Exception => e
      passed = false
    end

    return passed
  })

  config.tests = [ fake_check ]
end
