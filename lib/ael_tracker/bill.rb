require "httparty"
require "json"

module AelTracker
  class Bill

    attr_accessor :id

    include HTTParty

    base_uri "http://www.aeltracker.org/api"

    def initialize(bill_id)
      self.id = bill_id
    end

    def profile
      @profile ||= get_profile
    end

    def method_missing(name, *args, &block)
      if profile.has_key?(name.to_s)
        profile[name.to_s]
      else
        super
        # "Hey there, #{name} is not an attribute of bill in our records."
      end
    end

    private

    def get_profile
      a = self.class.get "/bills/#{self.id}"
      JSON.parse( a.parsed_response )
    end

  end
end
