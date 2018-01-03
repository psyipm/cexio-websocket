# frozen_string_literal: true

require 'cex/websocket/version'
require 'active_support'

module CEX
  module Websocket
    autoload :Client, 'cex/websocket/client'

    mattr_accessor :uri
    self.uri = 'wss://ws.cex.io/ws/'

    # Setup
    # @example
    #
    # CEX::Websocket.setup do |config|
    #   config.uri = 'wss://ws.cex.io/ws/'
    # end
    #
    def self.setup
      yield self
    end
  end
end
