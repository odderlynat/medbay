require 'sinatra'
require 'sinatra/contrib'

module Medbay
  class App < Sinatra::Base
    register Sinatra::Contrib
    require 'pry'

    get '/' do
      results = []
      binding.pry
      Medbay.configuration.tests.each {|test|
        results << test.call
      }

      respond_with :index do |f|
        f.json { results.to_s }
      end
    end

    get '/test' do
      status 200
      body ''
    end
  end
end
