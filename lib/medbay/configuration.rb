module Medbay
  class Configuration
    attr_accessor :tests, :benchmark

    def initialize
      @tests = []
      @benchmark = false
    end
  end
end
