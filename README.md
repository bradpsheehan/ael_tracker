# AEL Tracker

A little gem that integrates with the AelTracker API. From the official site: http://www.aeltracker.org/api/:

>The AelTracker (i.e. Advanced Energy Legislation Tracker) API provides methods for obtaining basic information about advanced energy lislation.


## Installation

Add this line to your application's Gemfile:

    $ source 'https://rubygems.org'

    $ gem 'ael_tracker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ael_tracker

Include the following lines somewhere in your ruby environment
before the code:

    $ require 'ael_tracker'

## Usage

The ael_tracker gem does not yet fully wrap the AelTracker API.  What it does allow you to do is find bill specific information using the bill's id in the AEL Tracker database.

Create a new instance of Bill, passing in the bill id.  The following methods are available for your new bill instance:

$ bill_id

$ os_bill_id

$ os_chamber

$ os_session

$ time_stamp_creation

$ time_stamp_update

$ time_stamp_news_google

$ time_stamp_news_yahoo

$ time_stamp_os_check

$ auto_time_os_update

$ title

$ chamber_name

$ number

$ state

$ year_filed

$ os_date_passed_lower

$ os_date_passed_upper

$ os_date_signed

$ os_status

$ policy_category

$ summary

$ actions

$ votes

$ sponsors

$ versions

#####For example:

<pre><code>
  bill = AelTracker::Bill.new(1)

  bill.state                     # returns "Alabama"
  bill.poicy_category            # returns "Infrastructure"
</code></pre>


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
