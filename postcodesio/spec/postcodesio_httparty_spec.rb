require 'spec_helper'

describe 'Tests for a get and post request to a postcode api' do

  before(:each) do
    @pc = Postcodesio.new
  end

  it "Get single method should return a hash" do
    expect(@pc.get_single_postcode('ha86lh')).to be_kind_of(Hash)
  end

  it "Get single method should have a status of 200" do
    expect(@pc.get_single_postcode('ha86lh')['status']).to eq(200)
  end

  it "Get single method result key should be a hash" do
    expect(@pc.get_result).to be_kind_of(Hash)
  end

  it "Get single method result hash should have 23 values for single request" do
    expect(@pc.get_result.length).to eq(23)
  end

  it "Postcode should be a string" do
    expect(@pc.get_result['postcode']).to be_kind_of(String)
  end

  it "Quality should be an integer" do
    expect(@pc.get_result['quality']).to be_kind_of(Integer)
  end

  it "Eastings and Northings should have 6 digits" do
    expect(@pc.get_result['eastings'].to_s.size).to eq(6)
    expect(@pc.get_result['northings'].to_s.size).to eq(6)
  end

  it "Eastings and Northings should be integers" do
    expect(@pc.get_result['eastings']).to be_kind_of(Integer)
    expect(@pc.get_result['northings']).to be_kind_of(Integer)
  end

  it "Country should be a string" do
    expect(@pc.get_result['country']).to be_kind_of(String)
  end

  it "nhs_ha should be a string" do
    expect(@pc.get_result['nhs_ha']).to be_kind_of(String)
  end

  it "longitude and latitude should be floats" do
    expect(@pc.get_result['latitude']).to be_kind_of(Float)
    expect(@pc.get_result['longitude']).to be_kind_of(Float)
  end

  it "european electoral region should be a string" do
    expect(@pc.get_result['european_electoral_region']).to be_kind_of(String)
  end

  it "primary care trust should be a string" do
    expect(@pc.get_result['primary_care_trust']).to be_kind_of(String)
  end

end
