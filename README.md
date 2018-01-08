# API Testing

This is a programme to practice using an API in ruby. The API is accessed using HTTParty and then tests are used to check the format of the API using RSpec.

### How to set-up the programme

To install all of the required gems for this programme run the following in your terminal (MacOS):

```
bundle install
```
This will install all the gems in the gem file which includes HTTParty, JSON and RSpec.

In order to run the tests move into one of the directories from the root directory and run the following command:

```
rspec
```
### How to create a test using the RSpec testing tool
To use RSpec in your own repo run the command:
```
rspec --init
```
and follow the same file format as in the postcodesioSolution directory.

Below is an example of a test with a before hook to call the data from the Poscodesio class and test that the status code returned is 200 indicating the request is successful. Context is not compulsory to run the test.

```ruby
require 'spec_helper'

describe Postcodesio do
  context 'requesting information for multiple postcodes works correctly' do

    before(:all) do
      @postcodeio = Postcodesio.new.multiple_postcode_service
      @postcodeio.get_multiple_postcodes(['ha86lh', 'bs11dq', 'PH152AF'])
    end

    it "should respond with a status code of 200" do
      expect(@postcodeio.get_status).to eq(200)
    end

end
```

### Documentation

JSON - https://github.com/flori/json

RSpec - http://www.rubydoc.info/gems/rspec-core/RSpec

HTTParty - https://github.com/jnunemaker/httparty
