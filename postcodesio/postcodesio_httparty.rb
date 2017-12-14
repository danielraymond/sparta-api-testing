require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  attr_accessor :postcode

  def initialize
    @postcode = 'ha86lh'
  end

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post("/postcodes/", body: { "postcodes" => postcodes_array}).body)
  end

end

x = Postcodesio.new

# puts x.get_single_postcode('ha86lh')
# puts x.get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])
