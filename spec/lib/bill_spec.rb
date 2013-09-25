require 'spec_helper'
require './lib/ael_tracker/bill'

describe AelTracker::Bill do
  it "must include httparty methods" do
    expect( AelTracker::Bill ).to include HTTParty
  end

  it "must have the base url set to the AelTracker API endpoint" do
    expect( AelTracker::Bill.base_uri ).to eq 'http://www.aeltracker.org/api'
  end

  describe "GET bill" do

    let(:bill) { AelTracker::Bill.new("1") }

    before(:all) do
      VCR.insert_cassette 'bill', :record => :new_episodes
    end

    after(:all) do
      VCR.eject_cassette
    end

    it "must have an profile method" do
      expect( bill ).to respond_to :profile
    end

    it "must parse the api response from JSON to HASH" do
      expect( bill.profile ).to be_an_instance_of( Hash )
    end

    it "records the fixture" do
      expect( bill.profile["bill_id"] ).to eq "1"
    end

  end
end
