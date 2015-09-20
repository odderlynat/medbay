module Medbay
  class Configuration
    attr_accessor :tests, :benchmark, :views

    def initialize
      @tests = []
      @benchmark = false
      @views = Proc.new { File.expand_path("../views", __FILE__) }
    end
  end
end
