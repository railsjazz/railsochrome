require "railsochrome/version"

module Railsochrome
  mattr_accessor :enabled
  @@enabled = true

  autoload :Collector, "railsochrome/collector"
  autoload :Middleware, "railsochrome/middleware"
end

require "railsochrome/engine"
