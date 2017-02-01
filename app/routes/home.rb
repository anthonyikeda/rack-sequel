require 'sinatra/base'

module MicroServices
  module Routes

    class Home < Base
      get '/' do
        "Hello, World!"
      end

      get '/:name' do
        "Hello, #{params[:name]}!"
      end
    end
  end
end
