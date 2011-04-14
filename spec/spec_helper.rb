require 'rubygems'
require 'bundler/setup'
require "rails_app/config/environment"

$:.unshift File.expand_path("../../lib", __FILE__)

require 'nested_has_many_through'

RSpec.configure do |config|
end
