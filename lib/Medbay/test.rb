module Medbay
  class Test
    attr_accessor :func, :label

    def initialize(label, func)
      @label = label
      @func = func
    end

    def call
      result = @func.call
      {passed: result, name: @label}
    end
  end
end
