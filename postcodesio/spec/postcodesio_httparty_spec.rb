require 'spec_helper'

describe 'Tests for a get and post request to a postcode api' do

  before(:each) do
    @pc = Postcodesio.new
  end

  it "Get request should return a hash" do
    expect(@pc.get_single_postcode(@pc.postcode)).to be_kind_of(Hash)
  end

  it "Get request status should return 200" do
    expect(@pc.get_single_postcode(@pc.postcode)['status']).to eq(200)
  end

  it "Get request result should be a hash" do
    expect(@pc.get_single_postcode(@pc.postcode)['result']).to be_kind_of(Hash)
  end

end
