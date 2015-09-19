require 'sinatra'

module Medbay
  class App < Sinatra::Base
    def empty_response
      status 200
      body ''
    end

    get '/' do
      results = []
      Medbay.configuration.tests.each {|test|
        results << test.call
      }

      status 200
      results
    end
  end
end
