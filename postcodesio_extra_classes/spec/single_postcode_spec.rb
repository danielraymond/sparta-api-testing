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

  end
end
