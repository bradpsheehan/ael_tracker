require "httparty"

module AelTracker
  class Legislation

    include HTTParty

    base_uri "http://www.aeltracker.org/api"
  end
end
