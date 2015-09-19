require 'Medbay/version'
require 'Medbay/configuration'

module Medbay
  autoload :App, 'Medbay/app'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end
end
