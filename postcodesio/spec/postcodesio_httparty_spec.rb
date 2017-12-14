require 'spec_helper'

describe 'Tests for a get and post request to a postcode api' do

  before(:each) do
    @pc = Postcodesio.new
  end

  it "Get request should return a hash" do
    expect(@pc.get_single_postcode('ha86lh')).to be_kind_of(Hash)
  end

  it "Get request status should return 200" do
    expect(@pc.get_single_postcode('ha86lh')['status']).to eq(200)
  end

  it "Get request result should be a hash" do
    expect(@pc.get_single_postcode('ha86lh')['result']).to be_kind_of(Hash)
  end

  it "Result hash should have 23 values" do
    expect(@pc.get_single_postcode('ha86lh')['result'].length).to eq(23)
  end

  it "Postcode should be a string" do
    expect(@pc.get_single_postcode('ha86lh')['result']['postcode']).to be_kind_of(String)
  end

  it "Quality should be an integer" do
    expect(@pc.get_single_postcode('ha86lh')['result']['quality']).to be_kind_of(Integer)
  end

  it "Eastings and Northings should have 6 numbers" do
    expect(@pc.get_single_postcode('ha86lh')['result']['eastings'].to_s.size).to eq(6)
    expect(@pc.get_single_postcode('ha86lh')['result']['northings'].to_s.size).to eq(6)
  end

  it "Eastings and Northings should be integers" do
    expect(@pc.get_single_postcode('ha86lh')['result']['eastings']).to be_kind_of(Integer)
    expect(@pc.get_single_postcode('ha86lh')['result']['northings']).to be_kind_of(Integer)
  end

  it "Country should be a string" do
    expect(@pc.get_single_postcode('ha86lh')['result']['country']).to be_kind_of(String)
  end

end
