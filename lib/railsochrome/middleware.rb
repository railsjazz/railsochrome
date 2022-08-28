module Railsochrome
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      dup.call!(env)
    end

    def call!(env)
      status, headers, response = @app.call(env)

      if Railsochrome.enabled
        headers["railsochrome"] = "Hi there :)"
        Array.wrap(Railsochrome::Collector.messages).each_with_index do |e, i|
          headers["railsochrome_msg_#{i}"] = e
        end
      end

      [status, headers, response]
    end
  end
end