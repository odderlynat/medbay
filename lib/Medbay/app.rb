require 'sinatra'

module Medbay
  class App < Sinatra::Base
    get '/' do
      Medbay.configuration.tests.each {|test|
        test.call
      }
    end
  end
end
