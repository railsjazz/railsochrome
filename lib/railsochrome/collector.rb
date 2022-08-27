module Railsochrome
  class Collector < ActiveSupport::CurrentAttributes
    attribute :messages

    def add(message)
      self.messages ||= []
      self.messages.push(message)
    end
  end
end