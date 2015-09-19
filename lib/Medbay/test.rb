module Medbay
  class Test
    attr_accessor :func, :label

    def initialize(label, func)
      @label = label
      @func = func
    end

    def call
      @func.call
    end
  end
end
