require 'sinatra'

module Medbay
  class App < Sinatra::Base
    get '/' do
      'hello world!'
    end
  end
end
