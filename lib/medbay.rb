require 'medbay/configuration'
require 'medbay/test'

module Medbay
  autoload :App, 'medbay/app'

  class << self
    def configuration
      @configuration ||= Configuration.new
    end
  end

  def self.configure
    yield self.configuration
  end
end
