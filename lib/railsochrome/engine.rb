module Railsochrome
  class Railtie < ::Rails::Engine

    if Railsochrome.enabled
      initializer "railsochrome.middleware" do |app|
        if ::Rails::VERSION::MAJOR.to_i >= 5
          app.middleware.insert_after ActionDispatch::Executor, Railsochrome::Middleware
        else
          begin
            app.middleware.insert_after ActionDispatch::Static, Railsochrome::Middleware
          rescue
            app.middleware.insert_after Rack::SendFile, RailsLiveReload::Middleware
          end
        end
      end
    end

  end
end
