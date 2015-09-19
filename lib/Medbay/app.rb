require 'sinatra'
require 'sinatra/contrib'

module Medbay
  class App < Sinatra::Base
    register Sinatra::Contrib

    get '/' do
      results = []
      Medbay.configuration.tests.each {|test|
        results << test.call
      }

      respond_with :index do |f|
        f.json { results.to_s }
      end
    end
  end
end
