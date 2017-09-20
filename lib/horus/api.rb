require 'active_support/core_ext/hash/indifferent_access'

module Horus
  # Provide an API wrapper for the OpenWeather API
  class API
    # OpenWeather API version
    VERSION = '2.5'.freeze

    attr_accessor :api_key, :default_language,
                  :default_country_code, :default_units

    def initialize(options = {})
      options = options.with_indifferent_access

      @api_key = options[:api_key]
      @default_language = options[:default_language] || 'en'
      @default_country_code = options[:default_country_code]
      @default_units =  options[:default_units] || 'metric'
    end

    def current(**args, &block)
      fetch_current.execute(**args, &block)
    end

    private

    def fetch_current
      @current ||= Queries::Current.new self
    end
  end
end
