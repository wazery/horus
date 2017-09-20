module Horus
  class API
    attr_accessor :api_key, :default_language, :default_country_code, :default_units

    def initialize(options = {})
      @api_key = options[:api_key] || options['api_key']
      @default_language = options[:default_language] || options['default_language'] || 'en'
      @default_country_code = options[:default_country_code] || options['default_country_code']
      @default_units =  options[:default_units] || options['default_units'] || 'metric'
    end

    def current(**args, &block)
      fetch_current.execute(**args, &block)
    end

    private

    # TODO: Implement this
    def fetch_current
    end
  end
end
