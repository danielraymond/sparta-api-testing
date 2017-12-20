require 'json'
require_relative '../json_class_parse'
require 'httparty'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
