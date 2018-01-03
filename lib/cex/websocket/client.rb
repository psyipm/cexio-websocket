# frozen_string_literal: true

require 'kontena-websocket-client'
require 'json'

module CEX
  module Websocket
    class Client
      def listen_tickers(&_block)
        payload = { e: :subscribe, rooms: ['tickers'] }

        subscribe(payload) do |message|
          yield message
        end
      end

      private

      def subscribe(payload = {}, &_block)
        raise 'BlockMissingError' unless block_given?

        Kontena::Websocket::Client.connect(config_uri) do |client|
          client.send(payload.to_json)

          client.read do |message|
            yield message
          end

          client.close(1000)
        end
      end

      def config_uri
        CEX::Websocket.uri
      end
    end
  end
end
