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
#      headers['Content-Length'] = new_response.bytesize.to_s

      headers["railsochrome"] = "enabled"
      rand(20).times do |e|
        headers["railsochrome_msg_#{e}"] = "test " * rand(1..20)
      end

      [status, headers, response]
    end
  end
end