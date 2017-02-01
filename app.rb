require 'rubygems'
require 'bundler'


Bundler.require
$: << File.expand_path('../', __FILE__)

require 'sinatra/base'
require 'sinatra/sequel'
require 'app/routes'

module MicroServices

  class App < Sinatra::Application
    configure do

      set :database, lambda {
        "postgres://192.168.99.100:5432/test_db"
      }
    end

    configure do
      disable :method_override
      disable :static

      set :sessions, true,
          :http_only     => true,
          :secure        => production?,
          :expire_after  => 31557600,
          :secret        => ENV['SESSION_SECRET']

      end

    use Rack::Deflater

    use MicroServices::Routes::Home
  end
end
