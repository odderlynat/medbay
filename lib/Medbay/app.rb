require 'sinatra'

module Medbay
  class App < Sinatra::Base
    def empty_response
      status 200
      body ''
    end

    get '/' do
      Medbay.configuration.tests.each {|test|
        test.call
      }

      empty_response
    end
  end
end
