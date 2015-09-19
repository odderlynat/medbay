require 'medbay/configuration'
require 'medbay/test'

module Medbay
  autoload :App, 'medbay/app'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
