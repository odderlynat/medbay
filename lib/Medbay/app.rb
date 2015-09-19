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

      respond_with :index do |f|
        f.json { results }
      end
    end
  end
end
