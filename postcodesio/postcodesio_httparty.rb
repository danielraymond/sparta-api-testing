require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post("/postcodes/", body: { "postcodes" => postcodes_array}).body)
  end

  def get_result
    get_single_postcode('PH152AF')['result']
  end

end

x = Postcodesio.new

puts x.get_single_postcode('PH152AF')
# puts x.get_multiple_postcodes(["ha86lh", "bs11dq"])
