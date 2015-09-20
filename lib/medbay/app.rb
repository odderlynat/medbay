require 'sinatra'
require 'sinatra/contrib'

module Medbay
  class App < Sinatra::Base
    register Sinatra::Contrib
    set :views, Medbay.configuration.views

    get '/' do
      results = []

      Medbay.configuration.tests.each {|test|
        results << test.call
      }

      respond_with :index do |f|
        f.json { results.to_s }
        f.html { erb :index, locals: {results: results} }
      end
    end
  end
end
