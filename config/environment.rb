# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Artcoupe::Application.initialize!
require 'will_paginate/array'

vendor_plugins_dir = File.join(Rails.root, "vendor", "plugins")
if Dir.glob(File.join(vendor_plugins_dir, "*")).any?
  $stderr.puts "Plugins in vendor/plugins (#{vendor_plugins_dir}) are no longer allowed. " +
    "Please, put your Redmine plugins in the `plugins` directory at the root of your " +
    "Redmine directory (#{File.join(Rails.root, "plugins")})" 
  exit 1
end