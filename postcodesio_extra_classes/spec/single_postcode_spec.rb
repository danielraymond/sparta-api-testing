require 'spec_helper'

describe Postcodesio do
  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodeio = Postcodesio.new.single_postcode_service
      @postcodeio.get_single_postcode('ha86lh')
    end

    it "should respond with a status code of 200" do
      expect(@postcodeio.get_status_code_from_body_response).to eq 200
    end

    it "should respond with a hash of results" do
      expect(@postcodeio.get_result).to be_kind_of(Hash)
    end

    it "results hash should have 23 keys" do
      expect(@postcodeio.get_result.length).to eq(23)
    end

    it "Post code result should be a string" do
      expect(@postcodeio.get_postcode).to be_kind_of(String)
    end

    it "Quality should be an integer" do
      expect(@postcodeio.get_quality).to be_kind_of(Integer)
    end

    it "Single method Eastings and Northings should have 6 digits or be nil" do
      if @postcodeio.get_eastings.class == Integer
        expect(@postcodeio.get_eastings.to_s.size).to eq(6)
      else
        expect(@postcodeio.get_eastings).to be_nil
      end
      if @postcodeio.get_northings.class == Integer
        expect(@postcodeio.get_northings.to_s.size).to eq(6)
      else
        expect(@postcodeio.get_northings).to be_nil
      end
    end

    it "Single method Eastings and Northings should be integers or nil" do
      if @postcodeio.get_eastings.class == Integer
        expect(@postcodeio.get_eastings).to be_kind_of(Integer)
      else
        expect(@postcodeio.get_eastings).to be_nil
      end
      if @postcodeio.get_northings.class == Integer
        expect(@postcodeio.get_northings).to be_kind_of(Integer)
      else
        expect(@postcodeio.get_northings).to be_nil
      end
    end

    it "Single method country should be a string" do
      expect(@postcodeio.get_country).to be_kind_of(String)
    end

    it "Signle method nhs_ha should be a string or nil" do
      if @postcodeio.get_nhs_ha.class == String
        expect(@postcodeio.get_nhs_ha).to be_kind_of(String)
      else
        expect(@postcodeio.get_nhs_ha).to be_nil
      end
    end

    it "Single method longitude and latitude should be floats" do
      expect(@postcodeio.get_latitude).to be_kind_of(Float)
      expect(@postcodeio.get_longitude).to be_kind_of(Float)
    end

    it "Single method european electoral region should be a string or nil" do
      if @postcodeio.get_european_electoral_region.class == String
        expect(@postcodeio.get_european_electoral_region).to be_kind_of(String)
      else
        expect(@postcodeio.get_european_electoral_region).to be_nil
      end
    end

    it "Single method primary care trust should be a string or nil" do
      if @postcodeio.get_primary_care_trust.class == String
        expect(@postcodeio.get_primary_care_trust).to be_kind_of(String)
      else
        expect(@postcodeio.get_primary_care_trust).to be_nil
      end
    end

    it "Single method region should be a string or nil" do
      if @postcodeio.get_region.class == String
        expect(@postcodeio.get_region).to be_kind_of(String)
      else
        expect(@postcodeio.get_region).to be_nil
      end
    end

    it "Single method lsoa should be a string" do
      if @postcodeio.get_lsoa.class == String
        expect(@postcodeio.get_lsoa).to be_kind_of(String)
      else
        expect(@postcodeio.get_lsoa).to be_nil
      end
    end

    it "Single method msoa should be a string" do
      if @postcodeio.get_msoa.class == String
        expect(@postcodeio.get_msoa).to be_kind_of(String)
      else
        expect(@postcodeio.get_msoa).to be_nil
      end
    end

    it "Single method incode should be 3 characters" do
      expect(@postcodeio.get_incode.to_s.size).to eq(3)
    end

    it "Single method outcode should be 2, 3 or 4 characters" do
      expect(@postcodeio.get_outcode.size).to be_between(2,4).inclusive
    end

    it "Single method parliamentary constiuency should be a string or nil" do
      if @postcodeio.get_parliamentary_constituency.class == String
        expect(@postcodeio.get_parliamentary_constituency).to be_kind_of(String)
      else
        expect(@postcodeio.get_parliamentary_constituency).to be_nil
      end
    end

    it "Single method admin district should be a string or nil" do
      if @postcodeio.get_admin_district.class == String
        expect(@postcodeio.get_admin_district).to be_kind_of(String)
      else
        expect(@postcodeio.get_admin_district).to be_nil
      end
    end

    it "Single method parish should be a string or nil" do
      if @postcodeio.get_parish.class == String
        expect(@postcodeio.get_parish).to be_kind_of(String)
      else
        expect(@postcodeio.get_parish).to be_nil
      end
    end

    it "Single method admin county should be a string or nil" do
      if @postcodeio.get_admin_county.class == String
        expect(@postcodeio.get_admin_county).to be_kind_of(String)
      else
        expect(@postcodeio.get_admin_county).to be_nil
      end
    end

    it "Single method admin ward should be a string or nil" do
      if @postcodeio.get_admin_ward.class == String
        expect(@postcodeio.get_admin_ward).to be_kind_of(String)
      else
        expect(@postcodeio.get_admin_ward).to be_nil
      end
    end

    it "Single method ccg should be a string or nil" do
      if @postcodeio.get_ccg.class == String
        expect(@postcodeio.get_ccg).to be_kind_of(String)
      else
        expect(@postcodeio.get_ccg).to be_nil
      end
    end

    it "Single method nuts should be a string or nil" do
      if @postcodeio.get_nuts.class == String
        expect(@postcodeio.get_nuts).to be_kind_of(String)
      else
        expect(@postcodeio.get_nuts).to be_nil
      end
    end

    it "Single method codes should be in a hash" do
      expect(@postcodeio.get_codes).to be_kind_of(Hash)
    end

    it "Single method admin county code should be a string or nil" do
      if @postcodeio.get_admin_county_code.class == String
        expect(@postcodeio.get_admin_county_code).to be_kind_of(String)
      else
        expect(@postcodeio.get_admin_county_code).to be_nil
      end
    end

    it "Single method admin district code should be a string or nil" do
      if @postcodeio.get_admin_district_code.class == String
        expect(@postcodeio.get_admin_district_code).to be_kind_of(String)
      else
        expect(@postcodeio.get_admin_district_code).to be_nil
      end
    end

    it "Single method admin ward code should be a string or nil" do
      if @postcodeio.get_admin_ward_code.class == String
        expect(@postcodeio.get_admin_ward_code).to be_kind_of(String)
      else
        expect(@postcodeio.get_admin_ward_code).to be_nil
      end
    end

    it "Single method parish code should be a string or nil" do
      if @postcodeio.get_parish_code.class == String
        expect(@postcodeio.get_parish_code).to be_kind_of(String)
      else
        expect(@postcodeio.get_parish_code).to be_nil
      end
    end

    it "Single method ccg code should be a string or nil" do
      if @postcodeio.get_ccg_code.class == String
        expect(@postcodeio.get_ccg_code).to be_kind_of(String)
      else
        expect(@postcodeio.get_ccg_code).to be_nil
      end
    end

    it "Single method nuts code should be a string or nil" do
      if @postcodeio.get_nuts_code.class == String
        expect(@postcodeio.get_nuts_code).to be_kind_of(String)
      else
        expect(@postcodeio.get_nuts_code).to be_nil
      end
    end


  end
end
