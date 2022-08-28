require "railsochrome/version"

module Railsochrome
  mattr_accessor :enabled
  @@enabled = true

  autoload :Collector, "railsochrome/collector"
  autoload :Middleware, "railsochrome/middleware"

  def Railsochrome.log(message)
    Railsochrome::Collector.add(message)
  end
end

require "railsochrome/engine"
