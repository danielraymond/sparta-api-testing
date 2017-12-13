require 'json'
require 'date'

class ParseJson

  attr_accessor :json_file, :date

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
    @date = 0
  end

  def get_base_value
    @json_file['base']
  end

  def get_date_value
    @json_file['date']
  end

  def get_current_date
    @date = DateTime.now
    @date.strftime("%Y-%m-%d")
  end

  def get_rates_values
    @json_file['rates'].each do |key,value|
    end
  end

end
