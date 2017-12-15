require 'httparty'
require 'json'

class MultiPostcodesService
  include HTTParty

  attr_accessor :multiple_postcode_data

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes/", body: { "postcodes" => postcodes_array}).body)
  end

  def get_status
    @multiple_postcode_data['status']
  end

  def get_results

      @multiple_postcode_data.class

  end

  def get_results_inside_result
    get_results['result']
  end

  def get_query
    get_results['query']
  end

  def get_postcode
    get_results_inside_result['postcode']
  end

  def get_quality
    get_results_inside_result['quality']
  end

  def get_eastings
    get_results_inside_result['eastings']
  end

  def get_northings
    get_results_inside_result['northings']
  end

  def get_country
    get_results_inside_result['country']
  end

  def get_nhs_ha
    get_results_inside_result['nhs_ha']
  end

  def get_longitude
    get_results_inside_result['longitude']
  end

  def get_latitude
    get_results_inside_result['latitude']
  end

  def get_european_electoral_region
    get_results_inside_result['european_electoral_region']
  end

  def get_primary_care_trust
    get_results_inside_result['primary_care_trust']
  end

  def get_region
    get_results_inside_result['region']
  end

  def get_parish
    get_results_inside_result['parish']
  end

  def get_lsoa
    get_results_inside_result['lsoa']
  end

  def get_msoa
    get_results_inside_result['msoa']
  end

  def get_incode
    get_results_inside_result['incode']
  end

  def get_outcode
    get_results_inside_result['outcode']
  end

  def get_parliamentary_constituency
    get_results_inside_result['parliamentary_constituency']
  end

  def get_ccg
    get_results_inside_result['ccg']
  end

  def get_nuts
    get_results_inside_result['nuts']
  end

  def get_admin_county
    get_results_inside_result['admin_county']
  end

  def get_admin_district
    get_results_inside_result['admin_district']
  end

  def get_admin_ward
    get_results_inside_result['admin_ward']
  end

  def get_codes
    get_results_inside_result['codes']
  end

  def get_admin_county_code
    get_codes['admin_county']
  end

  def get_admin_district_code
    get_codes['admin_district']
  end

  def get_admin_ward_code
    get_codes['admin_ward']
  end

  def get_parish_code
    get_codes['parish']
  end

  def get_ccg_code
    get_codes['ccg']
  end

  def get_nuts_code
    get_codes['nuts']
  end

end
