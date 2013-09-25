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

    #returns all data for a bill
    def profile
      a = self.class.get "/bills/#{self.id}"
      JSON.parse( a.parsed_response )
    end

  end
end
