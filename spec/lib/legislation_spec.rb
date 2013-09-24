require 'spec_helper'
require './lib/ael_tracker/legislation'

describe AelTracker::Legislation do
  it "must include httparty methods" do
    expect( AelTracker::Legislation ).to include HTTParty
  end

  it "must have the base url set to the Dribble API endpoint" do
    expect( AelTracker::Legislation.base_uri ).to eq 'http://www.aeltracker.org/api'
  end

  describe "GET bill" do

    before(:all) do
      VCR.insert_cassette 'bill', :record => :new_episodes
    end

    after(:all) do
      VCR.eject_cassette
    end

    it "records the fixture" do
      AelTracker::Legislation.get('/bills/1')
    end

  end
end
