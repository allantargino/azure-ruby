#!/usr/bin/env ruby

require 'yaml'
require 'azure_mgmt_resources'
require 'azure_mgmt_compute'


puts 'Started!'

# Provide credentials
options = {
  tenant_id: ENV['AZURE_TENANT_ID'],
  client_id: ENV['AZURE_CLIENT_ID'],
  client_secret: ENV['AZURE_CLIENT_SECRET'],
  subscription_id: ENV['AZURE_SUBSCRIPTION_ID']
}

puts options

profile_client = Azure::Compute::Profiles::Latest::Mgmt::Client.new(options)

# To access the operations associated with Compute
vm = profile_client.virtual_machines.get 'kubernetes', 'worker-0'
puts vm.to_yaml