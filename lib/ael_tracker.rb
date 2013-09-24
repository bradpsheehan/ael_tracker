require "./lib/ael_tracker/bill"
require "ael_tracker/version"
require "httparty"

Dir[File.dirname(__FILE__) + '/ael_tracker/*.rb'].each do |file|
  require file
end

# module AelTracker
#   # Your code goes here...
# end
