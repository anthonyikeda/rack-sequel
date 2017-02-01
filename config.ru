require './app'
require 'rack'

Rack::Handler::WEBrick.run MicroServices::App
