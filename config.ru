# Rackup file to test Medbay standalone
require 'rubygems'
require 'bundler'

Bundler.setup

require 'Medbay'

run Medbay::App
