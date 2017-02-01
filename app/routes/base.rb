module MicroServices
  module Routes
    class Base < Sinatra::Application
      configure do
        set :views, 'app/views'
        set :root, File.expand_path('../../../', __FILE__)

        disable :method_override
        disable :protection
        disable :static

        set :show_exceptions, :after_handler

      end
      
    end
  end
end
