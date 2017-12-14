require 'spec_helper'

describe 'Tests for a get and post request to a postcode api' do

  before(:each) do
    @pc = Postcodesio.new
  end

  it "Get single method should return a hash" do
    expect(@pc.get_single_postcode('PH152AF')).to be_kind_of(Hash)
  end

  it "Get single method should have a status of 200" do
    expect(@pc.get_single_postcode('PH152AF')['status']).to eq(200)
  end

  it "Get single method result('PH152AF') key should be a hash" do
    expect(@pc.get_result('PH152AF')).to be_kind_of(Hash)
  end

  it "Get single method result('PH152AF') hash should have 23 values for single request" do
    expect(@pc.get_result('PH152AF').length).to eq(23)
  end

  it "Postcode should be a string" do
    expect(@pc.get_result('PH152AF')['postcode']).to be_kind_of(String)
  end

  it "Quality should be an integer" do
    expect(@pc.get_result('PH152AF')['quality']).to be_kind_of(Integer)
  end

  it "Eastings and Northings should have 6 digits or be nil" do
    if @pc.get_result('PH152AF')['eastings'].class == Integer
      expect(@pc.get_result('PH152AF')['eastings'].to_s.size).to eq(6)
    else
      expect(@pc.get_result('PH152AF')['eastings']).to be_nil
    end
    if @pc.get_result('PH152AF')['northings'].class == Integer
      expect(@pc.get_result('PH152AF')['northings'].to_s.size).to eq(6)
    else
      expect(@pc.get_result('PH152AF')['northings']).to be_nil
    end
  end

  it "Eastings and Northings should be integers or nil" do
    if @pc.get_result('PH152AF')['eastings'].class == Integer
      expect(@pc.get_result('PH152AF')['eastings']).to be_kind_of(Integer)
    else
      expect(@pc.get_result('PH152AF')['eastings']).to be_nil
    end
    if @pc.get_result('PH152AF')['northings'].class == Integer
      expect(@pc.get_result('PH152AF')['northings']).to be_kind_of(Integer)
    else
      expect(@pc.get_result('PH152AF')['northings']).to be_nil
    end
  end

  it "Country should be a string" do
    expect(@pc.get_result('PH152AF')['country']).to be_kind_of(String)
  end

  it "nhs_ha should be a string or nil" do
    if @pc.get_result('PH152AF')['nhs_ha'].class == String
      expect(@pc.get_result('PH152AF')['nhs_ha']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['nhs_ha']).to be_nil
    end
  end

  it "longitude and latitude should be floats" do
    expect(@pc.get_result('PH152AF')['latitude']).to be_kind_of(Float)
    expect(@pc.get_result('PH152AF')['longitude']).to be_kind_of(Float)
  end

  it "european electoral region should be a string or nil" do
    if @pc.get_result('PH152AF')['european_electoral_region'].class == String
      expect(@pc.get_result('PH152AF')['european_electoral_region']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['european_electoral_region']).to be_nil
    end
  end

  it "primary care trust should be a string or nil" do
    if @pc.get_result('PH152AF')['primary_care_trust'].class == String
      expect(@pc.get_result('PH152AF')['primary_care_trust']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['primary_care_trust']).to be_nil
    end
  end

  it "region should be a string or nil" do
    if @pc.get_result('PH152AF')['region'].class == String
      expect(@pc.get_result('PH152AF')['region']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['region']).to be_nil
    end
  end

  it "lsoa should be a string" do
    if @pc.get_result('PH152AF')['lsoa'].class == String
      expect(@pc.get_result('PH152AF')['lsoa']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['lsoa']).to be_nil
    end
  end

  it "msoa should be a string" do
    if @pc.get_result('PH152AF')['msoa'].class == String
      expect(@pc.get_result('PH152AF')['msoa']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['msoa']).to be_nil
    end
  end

  it "incode should be 3 characters" do
    expect(@pc.get_result('PH152AF')['incode'].to_s.size).to eq(3)
  end

  it "outcode should be 2, 3 or 4 characters" do
    expect(@pc.get_result('PH152AF')['outcode'].size).to be_between(2,4).inclusive
  end

  it "parliamentary constiuency should be a string or nil" do
    if @pc.get_result('PH152AF')['parliamentary_constituency'].class == String
      expect(@pc.get_result('PH152AF')['parliamentary_constituency']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['parliamentary_constituency']).to be_nil
    end
  end

  it "admin district should be a string or nil" do
    if @pc.get_result('PH152AF')['admin_distric'].class == String
      expect(@pc.get_result('PH152AF')['admin_distric']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['admin_distric']).to be_nil
    end
  end

  it "parish should be a string or nil" do
    if @pc.get_result('PH152AF')['parish'].class == String
      expect(@pc.get_result('PH152AF')['parish']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['parish']).to be_nil
    end
  end

  it "admin county should be a string or nil" do
    if @pc.get_result('PH152AF')['admin_county'].class == String
      expect(@pc.get_result('PH152AF')['admin_county']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['admin_county']).to be_nil
    end
  end

  it "admin ward should be a string or nil" do
    if @pc.get_result('PH152AF')['admin_ward'].class == String
      expect(@pc.get_result('PH152AF')['admin_ward']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['admin_ward']).to be_nil
    end
  end

  it "ccg should be a string or nil" do
    if @pc.get_result('PH152AF')['ccg'].class == String
      expect(@pc.get_result('PH152AF')['ccg']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['ccg']).to be_nil
    end
  end

  it "nuts should be a string or nil" do
    if @pc.get_result('PH152AF')['nuts'].class == String
      expect(@pc.get_result('PH152AF')['nuts']).to be_kind_of(String)
    else
      expect(@pc.get_result('PH152AF')['nuts']).to be_nil
    end
  end

  it "codes should be in a hash" do
    expect(@pc.get_codes('PH152AF')).to be_kind_of(Hash)
  end

  it "all codes should be a string or nil" do
    @pc.get_codes('PH152AF').each do |i|
      if i[1].class == String
        expect(i[1]).to be_kind_of(String)
      else
        expect(i)[1].to be_nil
      end
    end
  end



end
