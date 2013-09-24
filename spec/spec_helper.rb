require 'rspec'
require 'webmock/rspec'
require 'vcr'


#VCR config
VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/cassettes'
  c.hook_into :webmock
end
