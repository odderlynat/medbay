module Medbay
  class Test
    attr_accessor :label, :func

    def initialize(label, func)
      @label = label
      @func = func
    end

    def call
      passed, elapsed = nil

      if Medbay.configuration.benchmark
        elapsed = Benchmark.realtime do
          passed = @func.call
        end

        return {passed: passed, name: @label, elapsed: elapsed*1000}
      end

      passed = @func.call
      {passed: passed, name: @label}
    end
  end
end
