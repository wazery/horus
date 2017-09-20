# Extend Rails configuration, so Horus can be configured in Rails apps
module Horus
  def self.configure(&block)
    raise ArgumentError, 'No block was given.' unless block

    api = Rails.configuration.horus = Horus::API.new

    block.call(api)
    api
  end
end
