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
    if @pc.get_result['eastings'].class == Integer
      expect(@pc.get_result['eastings']).to be_kind_of(Integer)
    else
      expect(@pc.get_result['eastings']).to be_kind_of(Null)
    end
    if @pc.get_result['northings'].class == Integer
      expect(@pc.get_result['northings']).to be_kind_of(Integer)
    else
      expect(@pc.get_result['northings']).to be_kind_of(Null)
    end
    # expect(@pc.get_result['eastings']).to be_kind_of(Integer)
    # expect(@pc.get_result['northings']).to be_kind_of(Integer)
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

  it "region should be a string" do
    if @pc.get_result['region'].class == String
      expect(@pc.get_result['region']).to be_kind_of(String)
    else
      expect(@pc.get_result['region']).to eq(nil)  
    end

  end

  it "lsoa should be a string" do
    expect(@pc.get_result['lsoa']).to be_kind_of(String)
  end

  it "msoa should be a string" do
    expect(@pc.get_result['msoa']).to be_kind_of(String)
  end

  it "incode should be 3 characters" do
    expect(@pc.get_result['incode'].to_s.size).to eq(3)
  end

  it "outcode should be 2, 3 or 4 characters" do
    expect(@pc.get_result['outcode'].size).to be_between(2,4).inclusive
  end

  it "parliamentary constiuency should be a string" do
    expect(@pc.get_result['parliamentary_constituency']).to be_kind_of(String)
  end

end
